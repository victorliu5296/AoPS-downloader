import html
import requests
from bs4 import BeautifulSoup
import subprocess
import os
import re
import shutil
import time
import asyncio
import aiohttp
import hashlib

CACHE_DIR = "wiki_cache"
os.makedirs(CACHE_DIR, exist_ok=True)

def calculate_file_hash(filepath):
    """Calculate MD5 hash of the file content."""
    with open(filepath, "rb") as f:
        return hashlib.md5(f.read()).hexdigest()

def should_compile_asy(asy_filepath):
    """Determine if an Asymptote file should be compiled based on its hash."""
    compiled_pdf_path = os.path.splitext(asy_filepath)[0] + ".pdf"
    hash_path = compiled_pdf_path + ".hash"
    current_hash = calculate_file_hash(asy_filepath)

    if os.path.exists(compiled_pdf_path) and os.path.exists(hash_path):
        with open(hash_path, "r") as f:
            cached_hash = f.read().strip()
        if cached_hash == current_hash:
            print(f"Skipping compilation for {asy_filepath}: No changes detected.")
            return False

    with open(hash_path, "w") as f:
        f.write(current_hash)
    return True

def run_asymptote_compilation(temp_dir_abs, asy_modules_dir):
    """Runs Asymptote compilation for all `.asy` files in the temporary directory."""
    print(f"Compiling Asymptote files...")
    asy_files = [f for f in os.listdir(temp_dir_abs) if f.lower().endswith(".asy")]

    if not asy_files:
        print("No Asymptote files found to compile.")
        return True

    asy_modules_dir_abs = os.path.abspath(asy_modules_dir).replace("\\", "/")

    for asy_file in asy_files:
        asy_filepath = os.path.join(temp_dir_abs, asy_file)

        if not should_compile_asy(asy_filepath):
            continue

        env = os.environ.copy()
        env["ASYLANG"] = asy_modules_dir_abs
        env["ASYMPTOTE_DIR"] = asy_modules_dir_abs

        print(f"Compiling {asy_file} with ASYLANG={env['ASYLANG']}...")

        command_asymptote = ["asy", "-vvv", asy_filepath]

        process_asymptote = subprocess.Popen(
            command_asymptote,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            cwd=temp_dir_abs,
            env=env
        )
        stdout_asymptote, stderr_asymptote = process_asymptote.communicate()

        if process_asymptote.returncode != 0:
            error_message = stderr_asymptote.decode("utf-8", errors="ignore")
            print(f"Error compiling {asy_file}. Asymptote exited with code {process_asymptote.returncode}")
            print(f"Asymptote Error Output:\n{error_message}")
            return False
        else:
            print(f"Successfully compiled {asy_file}.")
    return True

def move_pdf_output(temp_dir_abs, output_dir, tex_filename_base):
    """Move the compiled PDF to the output directory, overwriting if it exists."""
    pdf_filename = tex_filename_base + ".pdf"
    temp_pdf_filepath = os.path.join(temp_dir_abs, pdf_filename)
    output_pdf_filepath = os.path.join(output_dir, pdf_filename)

    try:
        # Remove existing PDF if it exists
        if os.path.exists(output_pdf_filepath):
            os.remove(output_pdf_filepath)
            print(f"Removed existing PDF: {output_pdf_filepath}")
            
        shutil.move(temp_pdf_filepath, output_pdf_filepath)
        print(f"Moved PDF to: {output_pdf_filepath}")
        return True
    except Exception as e:
        print(f"Error moving PDF file: {e}")
        return False

def should_compile_tex(tex_filepath):
    """Determine if a LaTeX file should be compiled based on its hash."""
    pdf_filepath = os.path.splitext(tex_filepath)[0] + ".pdf"
    hash_path = pdf_filepath + ".hash"
    current_hash = calculate_file_hash(tex_filepath)

    if os.path.exists(pdf_filepath) and os.path.exists(hash_path):
        with open(hash_path, "r") as f:
            cached_hash = f.read().strip()
        if cached_hash == current_hash:
            print(f"Skipping LaTeX compilation for {tex_filepath}: No changes detected.")
            return False

    with open(hash_path, "w") as f:
        f.write(current_hash)
    return True

def run_latex_compilation(tex_filepath, cwd, pass_num):
    """Runs a single pass of LaTeX compilation."""
    tex_filename_base = os.path.splitext(os.path.basename(tex_filepath))[0]
    if not should_compile_tex(tex_filepath):
        return True

    print(f"Compiling LaTeX (pass {pass_num}) for {tex_filename_base} in temporary directory...")
    command_latex = ['pdflatex', '-interaction=nonstopmode', '--shell-escape', os.path.basename(tex_filepath)]
    process_latex = subprocess.Popen(command_latex, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=cwd)
    stdout_latex, stderr_latex = process_latex.communicate()

    if process_latex.returncode != 0:
        error_message = stderr_latex.decode('utf-8', errors='ignore')
        print(f"Error in LaTeX pass {pass_num} for {tex_filename_base}.tex. LaTeX exited with code {process_latex.returncode}")
        print(f"LaTeX Error Output:\n{error_message}")
        print(f"\n--- LaTeX Compilation (Pass {pass_num}) Failed. Check the console output for LaTeX errors. ---")
        return False
    else:
        print(f"LaTeX pass {pass_num} for {tex_filename_base}.tex completed.")
        return True

def remove_metadata(latex_content):
    """Removes metadata tags like [[...]] and 'Solution:' or 'Problem:' from LaTeX content."""
    content_without_tags = re.sub(r'\[\[.*?\]\]', '', latex_content)
    content_without_metadata = re.sub(r'^\s*(Solution|Problem):\s*$', '', content_without_tags, flags=re.MULTILINE | re.IGNORECASE)
    return content_without_metadata

def get_cache_filename(title):
    """Generates a safe filename for caching based on the wiki title."""
    safe_title = title.replace(" ", "_").replace("/", "_")
    return os.path.join(CACHE_DIR, f"{safe_title}.html")

async def async_download_wiki_page(session, year, contest_type, contest_variant=None, is_fall=False, use_cache=True):
    """Asynchronously downloads the AoPS Wiki page for a given contest, using cache."""
    base_url = "https://artofproblemsolving.com/wiki/index.php?title="
    if is_fall:
        title = f"{year}_Fall_AMC_12{contest_variant}_Problems"
    else:
        title = f"{year}_AMC_12{contest_variant}_Problems" if 'AMC12' in contest_type else f"{year}_AIME_{contest_variant}_Problems"

    cache_filename = get_cache_filename(title)

    if use_cache and os.path.exists(cache_filename):
        print(f"Using cached wiki page for: {title}")
        with open(cache_filename, "r", encoding="utf-8") as f:
            return title, f.read()

    url = base_url + title + "&action=edit"
    print(f"Fetching: {title} from web")
    try:
        async with session.get(url) as response:
            response.raise_for_status()
            html_content = await response.text()
        with open(cache_filename, "w", encoding="utf-8") as f:
            f.write(html_content)
        return title, html_content
    except aiohttp.ClientError as e:
        print(f"Error downloading {title}: {e}")
        return title, None

def extract_problems(html_content):
    """Extracts problems from HTML content, using regex for headings."""
    if not html_content:
        return []

    soup = BeautifulSoup(html_content, 'html5lib')
    textarea = soup.find('textarea', {'readonly': ''})
    if not textarea:
        print("Could not find textarea with problem source.")
        return []

    wiki_text = textarea.string
    cleaned_wiki_text = remove_metadata(wiki_text)

    problems = []
    current_problem_content = ""
    in_problem = False
    stop_processing = False

    lines = cleaned_wiki_text.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i]

        if stop_processing:
            i += 1
            continue

        unwanted_section_match = re.match(r"^==\s*(See\s*also|References?|External\s*links?)\s*==$", line, re.IGNORECASE)

        if unwanted_section_match:
            stop_processing = True
            i += 1
            continue

        problem_match = re.match(r"^==\s*Problem\s*(\d+)\s*==$", line)

        if problem_match:
            if current_problem_content and in_problem:
                problems.append(current_problem_content.strip())
            current_problem_content = ""
            in_problem = True
            i += 1
            continue

        if in_problem:
            current_problem_content += line + "\n"

        i += 1

    if current_problem_content and in_problem:
        problems.append(current_problem_content.strip())

    cleaned_problems = []
    for problem in problems:
        content = problem.strip()
        content = content.encode('ascii', 'ignore').decode('ascii')
        content = content.replace("’", "'").replace("‘", "'").replace("“", "\"").replace("”", "\"")
        cleaned_problems.append(content.strip())

    return cleaned_problems

def generate_latex_header(contest_type, year_range_str, doc_type):
    """Generates the LaTeX header content (preamble only)."""
    return r"""
\documentclass{article}
\usepackage{amsmath, amssymb}
\usepackage{geometry}
\geometry{a4paper, margin=0.75in}
\usepackage{enumitem}
\usepackage{hyperref}
\usepackage{fancyhdr}
\usepackage{tikz}
\usepackage{graphicx}
\usepackage{asymptote}
\usepackage{arcs}
\usepackage{xwatermark}
\begin{asydef}
  // Global Asymptote settings
  settings.outformat = "pdf";
  settings.render = 0;
  settings.prc = false;
  import olympiad;
  import cse5;
  size(8cm);
\end{asydef}
\pagestyle{fancy}
\fancyhead[L]{\textbf{""" + contest_type + r""" """ + doc_type.capitalize() + r"""}}
\fancyhead[R]{\textbf{""" + year_range_str + r"""}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\title{""" + contest_type + r""" """ + doc_type.capitalize() + r""" \\ """ + year_range_str + r"""}
\date{}
"""

def generate_latex_footer():
    """Generates the LaTeX footer content."""
    return r"""
\end{document}
"""

def process_problems(problems_by_title, is_combined):
    """Processes problems using original wiki titles for sections."""
    latex_content_body = ""
    
    if is_combined:
        # Sort titles lexicographically (chronological since year comes first)
        sorted_titles = sorted(problems_by_title.keys())
        for title in sorted_titles:
            # Format title: "2012_AMC_12A_Problems" -> "2012 AMC 12A"
            display_title = title.replace("_", " ").replace(" Problems", "")
            latex_content_body += r"\section*{" + display_title + r"}"
            problems = problems_by_title[title]

            latex_content_body += r"\begin{enumerate}[label=\arabic*., itemsep=0.5em]"
            for problem in problems:
                processed_problem = process_problem_content(problem)
                latex_content_body += r"\item " + processed_problem + r"\par \vspace{0.5em}"
            latex_content_body += r"\end{enumerate}\newpage"
    else:
        # Single document - get the only title in the dict
        title = next(iter(problems_by_title))
        display_title = title.replace("_", " ").replace(" Problems", "")
        latex_content_body += r"\section*{" + display_title + r"}"
        problems = problems_by_title[title]

        latex_content_body += r"\begin{enumerate}[label=\arabic*., itemsep=0.5em]"
        for problem in problems:
            processed_problem = process_problem_content(problem)
            latex_content_body += r"\item " + processed_problem + r"\par \vspace{0.5em}"
        latex_content_body += r"\end{enumerate}"

    return latex_content_body

def write_latex_to_file(tex_filepath, latex_content):
    """Writes the LaTeX content to a file."""
    os.makedirs(os.path.dirname(tex_filepath), exist_ok=True)
    with open(tex_filepath, "w", encoding="utf-8") as f:
        f.write(latex_content)

def create_latex_document(contest_type, problems_by_title, year_range_str, output_filename_prefix, output_folder, doc_type, is_combined=False):
    """Creates LaTeX document using original wiki titles for sections."""
    latex_header = generate_latex_header(contest_type, year_range_str, doc_type)
    latex_content_body = process_problems(problems_by_title, is_combined)
    latex_footer = generate_latex_footer()

    document_start = r"\begin{document}" + r"\maketitle" + r"\thispagestyle{fancy}"
    if is_combined:
        document_start += r"\tableofcontents\newpage"
    else:
        document_start += r"\newpage"

    latex_content = latex_header + document_start + latex_content_body + latex_footer

    if contest_type == "AMC12":
        base_output_dir = os.path.join(output_folder, "AMC12", doc_type.capitalize())
    elif contest_type == "AIME":
        base_output_dir = os.path.join(output_folder, "AIME", doc_type.capitalize())

    temp_dir = os.path.join(base_output_dir, "temp", output_filename_prefix)
    os.makedirs(temp_dir, exist_ok=True)
    tex_filepath = os.path.join(temp_dir, output_filename_prefix + ".tex")

    write_latex_to_file(tex_filepath, latex_content)
    return tex_filepath

def process_problem_content(problem):
    """Process individual problem content with robust math/asymptote handling."""
    def extract_asy_code(content):
        asy_start = content.find('<asy>')
        asy_end = content.find('</asy>')
        if asy_start != -1 and asy_end != -1:
            asy_code = content[asy_start + 5:asy_end].strip()
            if asy_code and not asy_code.isspace():
                return f'\n\\begin{{center}}\n\\begin{{asy}}\nimport olympiad;\nimport cse5;\n{asy_code}\n\\end{{asy}}\n\\end{{center}}\n'
        return None

    def replace_cmath(match):
        cmath_content = match.group(1)
        # Check for multi-line environments like align*, gather*, etc.
        multi_line_envs = ['align', 'gather', 'multline']
        for env in multi_line_envs:
            env_pattern = rf'\\begin\{{{env}\*?\}}(.*?)\\end\{{{env}\*?\}}'
            if re.search(env_pattern, cmath_content, flags=re.DOTALL):
                # Return the multi-line environment as is
                return f'\n{cmath_content.strip()}\n'
        # Proceed to clean other display/inline math if no multi-line env found
        display_math_patterns = [
            r'\\\[(.*?)\\]',
            r'\$\$(.*?)\$\$',
            r'\\begin\{equation\*?\}(.*?)\\end\{equation\*?\}',
            r'\\begin\{displaymath\}(.*?)\\end\{displaymath\}',
        ]
        cleaned_content = cmath_content
        for pattern in display_math_patterns:
            cleaned_content = re.sub(pattern, r'\1', cleaned_content, flags=re.DOTALL | re.IGNORECASE)
        inline_math_patterns = [
            r'\\\((.*?)\\\)',
            r'\$(.*?)\$',
            r'\\begin\{math\}(.*?)\\end\{math\}',
        ]
        for pattern in inline_math_patterns:
            cleaned_content = re.sub(pattern, r'\1', cleaned_content, flags=re.DOTALL | re.IGNORECASE)
        return f'\n\\begin{{equation*}}\n{cleaned_content.strip()}\n\\end{{equation*}}\n'

    # Escape LaTeX-sensitive HTML entities before unescaping
    problem = re.sub(
        r'(&amp;|&#(?:35|36|37|95|123|125|126|94|92);)',
        r'\\\1',
        problem
    )

    problem = html.unescape(problem)
    problem = re.sub(r'<math>(.*?)</math>', r'\\(\1\\)', problem, flags=re.DOTALL)

    problem = re.sub(r'<cmath>(.*?)</cmath>', replace_cmath, problem, flags=re.DOTALL)

    problem = re.sub(r'\\begin{aligned\*}', r'\\begin{aligned}', problem)
    problem = re.sub(r'\\end{aligned\*}', r'\\end{aligned}', problem)

    parts = []
    current_pos = 0
    while True:
        asy_start = problem.find('<asy>', current_pos)
        if asy_start == -1:
            if current_pos < len(problem):
                parts.append(problem[current_pos:])
            break

        if asy_start > current_pos:
            parts.append(problem[current_pos:asy_start])

        asy_end = problem.find('</asy>', asy_start)
        if asy_end == -1:
            parts.append(problem[asy_start:])
            break

        asy_code = extract_asy_code(problem[asy_start:asy_end + 6])
        if asy_code:
            parts.append(asy_code)

        current_pos = asy_end + 6

    processed_problem = ''.join(parts)
    processed_problem = replace_over_with_frac(processed_problem)

    return processed_problem

def replace_over_with_frac(content):
    pattern = r'{([^}]*?)\\over([^}]*?)}'
    return re.sub(pattern, r'\\frac{\1}{\2}', content)

def install_asymptote_modules(asy_modules_dir):
    """Checks for and installs required Asymptote modules."""
    modules_to_check = {
        "olympiad": "https://math.berkeley.edu/~monks/images/olympiad.asy",
        "cse5": "https://raw.githubusercontent.com/vEnhance/dotfiles/master/asy/cse5.asy"
    }

    for module_name, module_url in modules_to_check.items():
        module_filepath = os.path.join(asy_modules_dir, f"{module_name}.asy")
        if not os.path.exists(module_filepath):
            print(f"\nNOTE: You are missing the {module_name} package for Asymptote.")
            print(f"Attempting to download {module_name}.asy from {module_url}")
            try:
                response = requests.get(module_url, stream=True)
                response.raise_for_status()

                with open(module_filepath, 'wb') as f:
                    for chunk in response.iter_content(chunk_size=8192):
                        f.write(chunk)
                print(f"Successfully downloaded and saved {module_name}.asy to {asy_modules_dir}")

                if os.path.getsize(module_filepath) == 0:
                    print(f"WARNING: Downloaded {module_name}.asy file is empty. There might be an issue with the download.")
                    return False

            except requests.exceptions.RequestException as e:
                print(f"Error downloading {module_name}.asy: {e}")
                print(f"Please ensure you have internet connectivity and the URL is correct.")
                return False
            except Exception as e:
                print(f"An unexpected error occurred during module download: {e}")
                return False
        else:
            pass
    return True

def compile_latex_to_pdf(tex_filepath, output_folder="output"):
    """Compile LaTeX to PDF with Asymptote in a 'temp' subdirectory and move PDF to the base folder."""
    tex_filename_base = os.path.splitext(os.path.basename(tex_filepath))[0]
    temp_dir = os.path.dirname(tex_filepath)
    output_dir = os.path.dirname(os.path.dirname(temp_dir))  # Move up from temp/ to base output directory
    temp_dir_abs = os.path.abspath(temp_dir)
    asy_modules_dir = os.path.join(output_folder, "asy_modules")
    os.makedirs(asy_modules_dir, exist_ok=True)

    try:
        cwd = temp_dir_abs

        if not run_latex_compilation(tex_filepath, cwd, 1):
            return None

        if not install_asymptote_modules(asy_modules_dir):
            return None

        if not run_asymptote_compilation(temp_dir_abs, asy_modules_dir):
            return None

        if not run_latex_compilation(tex_filepath, cwd, 2):
            return None

        if not move_pdf_output(temp_dir_abs, output_dir, tex_filename_base):
            return None

        print(f"Successfully compiled {tex_filename_base}.tex to PDF.")
        return os.path.join(output_dir, tex_filename_base + ".pdf")

    except Exception as e:
        print(f"\nAn unexpected error occurred during compilation: {e}")
        return None


async def main():
    start_year = None
    end_year = None
    contest_type = None

    while contest_type not in ["AMC12", "AIME"]:
        contest_type = input("Enter contest type (AMC12 or AIME): ").strip().upper()
        if contest_type not in ["AMC12", "AIME"]:
            print("Invalid contest type. Please enter 'AMC12' or 'AIME'.")

    while start_year is None:
        try:
            start_year = int(input("Enter starting year: "))
            if start_year < 1950:
                print("Year should be 1950 or later.")
                start_year = None
        except ValueError:
            print("Invalid year. Please enter a number.")

    while end_year is None:
        try:
            end_year = int(input("Enter ending year: "))
            if end_year < start_year:
                print("Ending year cannot be before starting year.")
                end_year = None
        except ValueError:
            print("Invalid year. Please enter a number.")

    output_folder = "output"

    os.makedirs(output_folder, exist_ok=True)
    os.makedirs(os.path.join(output_folder, "AMC12", "Problems"), exist_ok=True)
    os.makedirs(os.path.join(output_folder, "AIME", "Problems"), exist_ok=True)
    asy_modules_dir = os.path.join(output_folder, "asy_modules")
    os.makedirs(asy_modules_dir, exist_ok=True)

    if not install_asymptote_modules(asy_modules_dir):
        print("Module installation failed. Exiting.")
        exit()

    problems_by_title = {}
    if contest_type == "AMC12":
        variants = ['A', 'B']
    elif contest_type == "AIME":
        variants = ['I', 'II']

    pdf_filepaths = []

    async with aiohttp.ClientSession() as session:
        start_time_total = time.time()
        download_tasks = []
        for year in range(start_year, end_year + 1):
            if contest_type == "AMC12":
                for variant in variants:
                    download_tasks.append(
                        async_download_wiki_page(session, year, contest_type, variant)
                    )
                if year == 2021 and start_year <= 2021 <= end_year:
                    for variant in variants:
                        download_tasks.append(
                            async_download_wiki_page(session, year, contest_type, variant, is_fall=True)
                        )
            elif contest_type == "AIME":
                for variant in variants:
                    download_tasks.append(
                        async_download_wiki_page(session, year, contest_type, variant)
                    )

        download_results = await asyncio.gather(*download_tasks)

        for title, html_content in download_results:
            if html_content:
                problems = extract_problems(html_content)
                problems_by_title[title] = problems  # Store under original title

                # Create individual PDF for this title
                tex_filepath = create_latex_document(
                    contest_type,
                    {title: problems},  # Use title string as key
                    str(year),
                    title,
                    output_folder,
                    "problems",
                    is_combined=False
                )
                start_time_compile = time.time()
                pdf_filepath = compile_latex_to_pdf(tex_filepath, output_folder=output_folder)
                compile_time = time.time() - start_time_compile
                print(f"Compilation time for {title}: {compile_time:.2f} seconds")

                if pdf_filepath:
                    pdf_filepaths.append(pdf_filepath)

        year_range_combined = f"{start_year}-{end_year}"
        combined_filename = f"{contest_type}_Combined_Problems_{start_year}_to_{end_year}"
        tex_filepath_combined = create_latex_document(
            contest_type,
            problems_by_title,
            year_range_combined,
            combined_filename,
            output_folder,
            "problems",
            is_combined=True
        )
        start_time_compile_combined = time.time()
        pdf_filepath_combined = compile_latex_to_pdf(tex_filepath_combined, output_folder=output_folder)
        compile_time_combined = time.time() - start_time_compile_combined
        print(f"Compilation time for Combined {contest_type}: {compile_time_combined:.2f} seconds")
        if pdf_filepath_combined:
            pdf_filepaths.append(pdf_filepath_combined)

        end_time_total = time.time()
        total_time = end_time_total - start_time_total
        print(f"\nTotal script execution time: {total_time:.2f} seconds")

    print(f"\nPDF generation complete. PDFs are in the 'output' folder.")
    print(f"\n--- IMPORTANT ---\nIf LaTeX compilation failed, check the console output for detailed LaTeX error messages.\n---")

    delete_temp_files_prompt = input("\nDo you want to delete temporary files (log, aux, etc.)? ([y]es/[n]o): ").lower()
    if delete_temp_files_prompt in ['yes', 'y']:
        for pdf_filepath in pdf_filepaths:
            output_dir = os.path.dirname(pdf_filepath)
            temp_dir = os.path.join(output_dir, "temp")
            if os.path.exists(temp_dir):
                try:
                    shutil.rmtree(temp_dir)
                    print(f"Deleted temporary directory: {temp_dir}")
                except Exception as e:
                    print(f"Error deleting temporary directory {temp_dir}: {e}")
    else:
        print("\nTemporary files are kept in 'temp' subdirectories within each output folder.")


if __name__ == "__main__":
    asyncio.run(main())