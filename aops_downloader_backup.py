import requests
from bs4 import BeautifulSoup
import subprocess
import os
import re  # Import the regular expression module
import shutil
import time # Import time module for measuring time

CACHE_DIR = "wiki_cache"
os.makedirs(CACHE_DIR, exist_ok=True) # Ensure cache directory exists

def remove_metadata(latex_content):
    """Removes metadata tags like [[...]] and 'Solution:' or 'Problem:' from LaTeX content."""
    content_without_tags = re.sub(r'\[\[.*?\]\]', '', latex_content)
    content_without_metadata = re.sub(r'^\s*(Solution|Problem):\s*$', '', content_without_tags, flags=re.MULTILINE | re.IGNORECASE)
    return content_without_metadata

def get_cache_filename(title):
    """Generates a safe filename for caching based on the wiki title."""
    safe_title = title.replace(" ", "_").replace("/", "_") # Replace spaces and slashes with underscores
    return os.path.join(CACHE_DIR, f"{safe_title}.html")

def download_wiki_page(session, year, contest_type, contest_variant=None, is_fall=False, use_cache=True):
    """Downloads the AoPS Wiki page for a given contest, using cache to avoid repeated requests."""
    base_url = "https://artofproblemsolving.com/wiki/index.php?title="
    if is_fall:
        title = f"{year}_Fall_AMC_12{contest_variant}_Problems"
    else:
        title = f"{year}_AMC_12{contest_variant}_Problems" if 'AMC 12' in contest_type else f"{year}_AIME_{contest_variant}_Problems"

    cache_filename = get_cache_filename(title)

    if use_cache and os.path.exists(cache_filename):
        print(f"Using cached version for: {title}") # VERIFICATION: This message should appear on second run
        with open(cache_filename, "r", encoding="utf-8") as f:
            return f.read()

    url = base_url + title + "&action=edit"
    print(f"Fetching: {title} from web") # VERIFICATION: This message should only appear on first run (or when cache is cleared)
    try:
        response = session.get(url) # Use session here
        response.raise_for_status()
        html_content = response.text

        # Cache the downloaded content
        with open(cache_filename, "w", encoding="utf-8") as f:
            f.write(html_content)
        return html_content
    except requests.exceptions.RequestException as e:
        print(f"Error downloading {title}: {e}")
        return None

def extract_problems(html_content):
    """Extracts problems from HTML content, using regex for headings."""
    if not html_content:
        return []

    soup = BeautifulSoup(html_content, 'lxml') # Using lxml parser here (or 'html5lib')
    textarea = soup.find('textarea', {'readonly': ''})
    if not textarea:
        print("Could not find textarea with problem source.")
        return []

    wiki_text = textarea.string
    cleaned_wiki_text = remove_metadata(wiki_text)

    problems = []
    current_problem_content = ""
    in_problem = False
    stop_processing = False # Flag to stop processing after unwanted sections

    lines = cleaned_wiki_text.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i]

        if stop_processing: # If stop flag is set, skip remaining lines
            i += 1
            continue

        # Stronger regex to catch "See also", "References", etc., case-insensitive, with variations in spacing
        unwanted_section_match = re.match(r"^==\s*(See\s*also|References?|External\s*links?)\s*==$", line, re.IGNORECASE)

        if unwanted_section_match: # Stop processing if unwanted section is found
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

    return cleaned_problems, [] # Return empty list for solutions

def generate_latex_header(contest_name, year_range_str, doc_type):
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
\fancyhead[L]{\textbf{""" + contest_name + r""" """ + doc_type.capitalize() + r"""}}
\fancyhead[R]{\textbf{""" + year_range_str + r"""}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\title{""" + contest_name + r""" """ + doc_type.capitalize() + r""" \\ """ + year_range_str + r"""}
\date{}
"""

def generate_latex_footer():
    """Generates the LaTeX footer content."""
    return r"""
\end{document}
"""

def process_problems(problems_by_year_variant, is_combined, contest_type):
    """Processes problems for LaTeX document."""
    latex_content_body = ""
    if is_combined:
        sorted_years_variants = sorted(problems_by_year_variant.keys())
        for year_variant_tuple in sorted_years_variants:
            current_year, current_variant = year_variant_tuple
            year_variant_str = f"{current_year} AMC 12{current_variant}" if contest_type == "AMC" else f"{current_year} AIME {current_variant}"
            latex_content_body += r"\section*{" + year_variant_str + r"}"
            year_problems = problems_by_year_variant.get(year_variant_tuple, [])

            latex_content_body += r"\begin{enumerate}[label=\arabic*., itemsep=0.5em]"
            for problem in year_problems:
                processed_problem = process_problem_content(problem)
                latex_content_body += r"\item " + processed_problem + r"\par \vspace{0.5em}"
            latex_content_body += r"\end{enumerate}\newpage"
    else:
        latex_content_body += r"\section*{Problems}"
        year_problems = problems_by_year_variant.get((year, variant), [])

        latex_content_body += r"\begin{enumerate}[label=\arabic*., itemsep=0.5em]"
        for problem in year_problems:
            processed_problem = process_problem_content(problem)
            latex_content_body += r"\item " + processed_problem + r"\par \vspace{0.5em}"
        latex_content_body += r"\end{enumerate}"

    return latex_content_body

def write_latex_to_file(tex_filepath, latex_content):
    """Writes the LaTeX content to a file."""
    os.makedirs(os.path.dirname(tex_filepath), exist_ok=True)
    with open(tex_filepath, "w", encoding="utf-8") as f:
        f.write(latex_content)

def create_latex_document(contest_name, problems_by_year_variant, year_range_str, output_filename_prefix, contest_type, output_folder, doc_type, is_combined=False, year=None, variant=None):
    """Creates LaTeX document, combined or year-specific, with proper Asymptote handling."""
    latex_header = generate_latex_header(contest_name, year_range_str, doc_type)
    asy_modules_dir = os.path.join(output_folder, "asy_modules") # Get modules dir path
    latex_content_body = process_problems(problems_by_year_variant, is_combined, contest_type)
    latex_footer = generate_latex_footer()

    document_start = r"\begin{document}" + r"\maketitle" + r"\thispagestyle{fancy}"
    if is_combined:
        document_start += r"\tableofcontents\newpage"
    else:
        document_start += r"\newpage"

    latex_content = latex_header + document_start + latex_content_body + latex_footer

    # File path handling
    base_output_dir = ""
    if contest_type == "AMC":
        if is_combined:
            base_output_dir = os.path.join(output_folder, "AMC", doc_type.capitalize())
        else:
            base_output_dir = os.path.join(output_folder, "AMC", doc_type.capitalize(), str(year))
    elif contest_type == "AIME":
        if is_combined:
            base_output_dir = os.path.join(output_folder, "AIME", doc_type.capitalize())
        else:
            base_output_dir = os.path.join(output_folder, "AIME", doc_type.capitalize(), str(year))

    temp_dir = os.path.join(base_output_dir, "temp")
    tex_filepath = os.path.join(temp_dir, output_filename_prefix + ".tex")

    # Write to file
    write_latex_to_file(tex_filepath, latex_content)
    return tex_filepath # Return the tex file path in temp for compilation

def process_problem_content(problem):
    """Process individual problem content with robust math/asymptote handling, preventing nested environments."""

    # Function to extract actual Asymptote code (remains the same)
    def extract_asy_code(content):
        asy_start = content.find('<asy>')
        asy_end = content.find('</asy>')
        if asy_start != -1 and asy_end != -1:
            asy_code = content[asy_start + 5:asy_end].strip()
            if asy_code and not asy_code.isspace():
                return f'\n\\begin{{center}}\n\\begin{{asy}}\n{asy_code}\n\\end{{asy}}\n\\end{{center}}\n'
        return None

    # Replace <math> with single-line math delimiters (remains the same)
    problem = re.sub(r'<math>(.*?)</math>', r'$\1$', problem, flags=re.DOTALL)

    # Replace <cmath> with display math environments using equation*, and remove *inner* math environments
    def replace_cmath(match):
        cmath_content = match.group(1)
        # Recursively remove any LaTeX math environments (display and inline) from inside <cmath>
        # This will handle nested environments of various types.
        cleaned_content = cmath_content

        # Remove display math environments: \[...\], $$...$$, \begin{equation*}...\end{equation*}, etc.
        display_math_patterns = [
            r'\\\[(.*?)\\]',        # \[ ... \]
            r'\$\$(.*?)\$\$',        # $$ ... $$
            r'\\begin\{equation\*?\}(.*?)\\end\{equation\*?\}', # \begin{equation*}...\end{equation*} and \begin{equation}...\end{equation}
            r'\\begin\{displaymath\}(.*?)\\end\{displaymath\}', # \begin{displaymath}...\end{displaymath}
            r'\\begin\{align\*?\}(.*?)\\end\{align\*?\}',     # \begin{align*}...\end{align*} and \begin{align}...\end{align}
            r'\\begin\{gather\*?\}(.*?)\\end\{gather\*?\}',    # \begin{gather*}...\end{gather*} and \begin{gather}...\end{gather}
            r'\\begin\{multline\*?\}(.*?)\\end\{multline\*?\}',  # \begin{multline*}...\end{multline*} and \begin{multline}...\end{multline}
        ]
        for pattern in display_math_patterns:
            cleaned_content = re.sub(pattern, r'\1', cleaned_content, flags=re.DOTALL | re.IGNORECASE)

        # Remove inline math environments: \(...\), $...$, \begin{math}...\end{math}, etc. (less likely in <cmath>, but for completeness)
        inline_math_patterns = [
            r'\\\((.*?)\\\)',       # \( ... \)
            r'\$(.*?)\$',           # $ ... $ (single dollar signs - be careful if used in text!)
            r'\\begin\{math\}(.*?)\\end\{math\}',    # \begin{math}...\end{math}
        ]
        for pattern in inline_math_patterns:
            cleaned_content = re.sub(pattern, r'\1', cleaned_content, flags=re.DOTALL | re.IGNORECASE)

        return f'\n\\begin{{equation*}}\n{cleaned_content.strip()}\n\\end{{equation*}}\n'

    problem = re.sub(r'<cmath>(.*?)</cmath>', replace_cmath, problem, flags=re.DOTALL)

    # Handle aligned* (remains the same)
    problem = re.sub(r'\\begin{aligned\*}', r'\\begin{aligned}', problem)
    problem = re.sub(r'\\end{aligned\*}', r'\\end{aligned}', problem)

    # Process Asymptote blocks
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
    # Match pattern: {numerator \over denominator}
    pattern = r'{([^}]*?)\\over([^}]*?)}'
    return re.sub(pattern, r'\\frac{\1}{\2}', content)

def run_latex_compilation(tex_filepath, cwd, pass_num):
    """Runs a single pass of LaTeX compilation."""
    tex_filename_base = os.path.splitext(os.path.basename(tex_filepath))[0]
    print(f"Compiling LaTeX (pass {pass_num}) for {tex_filename_base} in temporary directory...")
    command_latex = ['pdflatex', '-interaction=nonstopmode', '--shell-escape', os.path.basename(tex_filepath)]
    process_latex = subprocess.Popen(command_latex, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=cwd)
    stdout_latex, stderr_latex = process_latex.communicate()

    if process_latex.returncode != 0:
        error_message = stderr_latex.decode('utf-8', errors='ignore')
        print(f"Error in LaTeX pass {pass_num} for {tex_filename_base}.tex. LaTeX exited with code {process_latex.returncode}")
        print(f"LaTeX Error Output:\n{error_message}") # Print LaTeX stderr
        print(f"\n--- LaTeX Compilation (Pass {pass_num}) Failed. Check the console output for LaTeX errors. ---")
        return False
    else:
        print(f"LaTeX pass {pass_num} for {tex_filename_base}.tex completed.")
        return True

def install_asymptote_modules(asy_modules_dir):
    """Checks for and installs required Asymptote modules."""
    modules_to_check = {
        "olympiad": "https://math.berkeley.edu/~monks/images/olympiad.asy",
        "cse5": "https://raw.githubusercontent.com/vEnhance/dotfiles/master/asy/cse5.asy"
    }

    for module_name, module_url in modules_to_check.items():
        module_filepath = os.path.join(asy_modules_dir, f"{module_name}.asy")
        if not os.path.exists(module_filepath): # Only download if module doesn't exist
            print(f"\nNOTE: You are missing the {module_name} package for Asymptote.")
            print(f"Attempting to download {module_name}.asy from {module_url}")
            try:
                response = requests.get(module_url, stream=True)
                response.raise_for_status() # Raise HTTPError for bad responses (4xx or 5xx)

                with open(module_filepath, 'wb') as f:
                    for chunk in response.iter_content(chunk_size=8192):
                        f.write(chunk)
                print(f"Successfully downloaded and saved {module_name}.asy to {asy_modules_dir}")

                if os.path.getsize(module_filepath) == 0: # Check for empty file
                    print(f"WARNING: Downloaded {module_name}.asy file is empty. There might be an issue with the download.")
                    return False # Indicate module installation failure due to empty file

            except requests.exceptions.RequestException as e:
                print(f"Error downloading {module_name}.asy: {e}")
                print(f"Please ensure you have internet connectivity and the URL is correct.")
                return False # Indicate module installation failure
            except Exception as e:
                print(f"An unexpected error occurred during module download: {e}")
                return False # Indicate module installation failure
        else:
            # print(f"Module {module_name} already exists in {asy_modules_dir}. Skipping download.")
            pass
    return True # Indicate module installation success (or modules already present)


def run_asymptote_compilation(temp_dir_abs, asy_modules_dir):
    """Runs Asymptote compilation on .asy files, using ASYLANG, with path debugging."""
    print(f"Compiling Asymptote in temporary directory...")
    asy_files = [f for f in os.listdir(temp_dir_abs) if f.lower().endswith(".asy")]
    if asy_files:
        for asy_file in asy_files:
            asy_filepath = os.path.join(temp_dir_abs, asy_file)
            command_asymptote = ['asy', '-vvv', asy_filepath] # Basic asy command + verbose output
            env = os.environ.copy()
            print(f"ASYLANG module directory (relative): {asy_modules_dir}") # Print relative path
            asy_modules_dir_abs = os.path.abspath(asy_modules_dir).replace("\\", "/") # Get absolute path and convert to forward slashes
            print(f"ASYLANG module directory (absolute): {asy_modules_dir_abs}") # Print absolute path
            env['ASYLANG'] = asy_modules_dir_abs # Set ASYLANG, replacing any existing value, using forward slashes
            print(f"Effective ASYLANG environment variable: {env['ASYLANG']}") # Print effective ASYLANG
            process_asymptote = subprocess.Popen(command_asymptote, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=temp_dir_abs, env=env)
            stdout_asymptote, stderr_asymptote = process_asymptote.communicate()

            if process_asymptote.returncode != 0:
                error_message_asy = stderr_asymptote.decode('utf-8', errors='ignore')
                print(f"Error compiling Asymptote file {asy_file}. Asymptote exited with code {process_asymptote.returncode}")
                print(f"Asymptote Error Output:\n{error_message_asy}")
                print("\n--- Asymptote Compilation Failed. Check the console output for Asymptote errors. ---")
                return False
            else:
                print(f"Asymptote compiled {asy_file}.")
        return True
    else:
        print("No Asymptote files found to compile.")
        return True

def move_pdf_output(temp_dir_abs, output_dir, tex_filename_base):
    """Moves the compiled PDF from the temporary directory to the output directory."""
    pdf_filename = tex_filename_base + ".pdf"
    temp_pdf_filepath = os.path.join(temp_dir_abs, pdf_filename)
    output_pdf_filepath = os.path.join(output_dir, pdf_filename)
    try:
        shutil.move(temp_pdf_filepath, output_pdf_filepath)
        print(f"Moved PDF to: {output_pdf_filepath}")
        return True
    except Exception as e:
        print(f"Error moving PDF file: {e}")
        return False


def compile_latex_to_pdf(tex_filepath, keep_temp_files=True, output_folder="output"):  # Changed default to True
    """Compiles LaTeX to PDF with Asymptote in a 'temp' subdirectory and moves PDF to base folder."""
    tex_filename_base = os.path.splitext(os.path.basename(tex_filepath))[0]
    temp_dir = os.path.dirname(tex_filepath)
    output_dir = os.path.dirname(temp_dir)
    temp_dir_abs = os.path.abspath(temp_dir)
    asy_modules_dir = os.path.join(output_folder, "asy_modules")
    os.makedirs(asy_modules_dir, exist_ok=True)

    try:
        cwd = temp_dir_abs # Use absolute path for cwd

        # LaTeX pass 1
        if not run_latex_compilation(tex_filepath, cwd, 1):
            return None

        # Install Asymptote Modules if needed
        if not install_asymptote_modules(asy_modules_dir):
            return None

        # Set up environment for Asymptote compilation
        env = os.environ.copy()
        asy_modules_dir_abs = os.path.abspath(asy_modules_dir)

        # Add modules directory to both ASYMPTOTE_DIR and ASYLANG
        if 'ASYMPTOTE_DIR' in env:
            env['ASYMPTOTE_DIR'] = f"{asy_modules_dir_abs}{os.pathsep}{env['ASYMPTOTE_DIR']}"
        else:
            env['ASYMPTOTE_DIR'] = asy_modules_dir_abs

        if 'ASYLANG' in env:
            env['ASYLANG'] = f"{asy_modules_dir_abs}{os.pathsep}{env['ASYLANG']}"
        else:
            env['ASYLANG'] = asy_modules_dir_abs

        # Asymptote compilation
        print(f"Compiling Asymptote in temporary directory...")
        asy_files = [f for f in os.listdir(temp_dir_abs) if f.lower().endswith(".asy")]
        if asy_files:
            for asy_file in asy_files:
                asy_filepath = os.path.join(temp_dir_abs, asy_file)
                command_asymptote = ['asy', asy_filepath]
                process_asymptote = subprocess.Popen(
                    command_asymptote,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    cwd=temp_dir_abs,
                    env=env
                )
                stdout_asymptote, stderr_asymptote = process_asymptote.communicate()

                if process_asymptote.returncode != 0:
                    error_message_asy = stderr_asymptote.decode('utf-8', errors='ignore')
                    print(f"Error compiling Asymptote file {asy_file}. Asymptote exited with code {process_asymptote.returncode}")
                    print(f"Asymptote Error Output:\n{error_message_asy}")
                    return None
                else:
                    print(f"Asymptote compiled {asy_file}.")

        # LaTeX pass 2
        if not run_latex_compilation(tex_filepath, cwd, 2):
            return None

        # Move PDF to output directory
        pdf_filename = tex_filename_base + ".pdf"
        temp_pdf_filepath = os.path.join(temp_dir_abs, pdf_filename)
        output_pdf_filepath = os.path.join(output_dir, pdf_filename)

        try:
            shutil.move(temp_pdf_filepath, output_pdf_filepath)
            print(f"Moved PDF to: {output_pdf_filepath}")
        except Exception as e:
            print(f"Error moving PDF file: {e}")
            return None

        print(f"Successfully compiled {tex_filename_base}.tex to PDF.")

        # Remove the automatic deletion here - let the main program handle it
        return output_pdf_filepath

    except FileNotFoundError as e:
        print(f"\nError: {e.filename} command not found.")
        print(f"Make sure {e.filename} is installed and in your system's PATH.")
        return None
    except Exception as e:
        print(f"\nAn unexpected error occurred during compilation: {e}")
        return None


if __name__ == "__main__":
    start_year = None
    end_year = None
    contest_type = None

    while contest_type not in ["AMC 12", "AIME"]:
        contest_type = input("Enter contest type (AMC 12 or AIME): ").strip().upper()
        if contest_type == "AMC 12":
            contest_type = "AMC 12" # Standardize input
        elif contest_type == "AIME":
            pass # Already in correct format
        else:
            print("Invalid contest type. Please enter 'AMC 12' or 'AIME'.")

    while start_year is None:
        try:
            start_year = int(input("Enter starting year: "))
            if start_year < 1950: # Basic validation, adjust range as needed
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
    keep_temp_files_option = False # Initial setting, will be controlled by user prompt later

    os.makedirs(output_folder, exist_ok=True)
    os.makedirs(os.path.join(output_folder, "AMC", "Problems"), exist_ok=True) # Ensure AMC problems dir exists
    os.makedirs(os.path.join(output_folder, "AIME", "Problems"), exist_ok=True) # Ensure AIME problems dir exists
    asy_modules_dir = os.path.join(output_folder, "asy_modules") # Define modules directory
    os.makedirs(asy_modules_dir, exist_ok=True) # Ensure modules directory exists

    # Install Asymptote Modules - ONCE at the beginning
    if not install_asymptote_modules(asy_modules_dir):
        print("Module installation failed. Exiting.")
        exit() # Exit if module installation fails

    problems_by_year_variant = {} # Store problems by (year, variant) tuple, will be contest-specific
    if contest_type == "AMC 12":
        problems_by_year_variant = {} # Reset for AMC
        contest_short_name = "AMC"
        variants = ['A', 'B']
    elif contest_type == "AIME":
        problems_by_year_variant = {} # Reset for AIME
        contest_short_name = "AIME"
        variants = ['I', 'II']

    pdf_filepaths = [] # To store all generated PDF filepaths for later processing

    # Create a requests session for efficiency
    with requests.Session() as session: # Use 'with' to ensure session closure

        start_time_total = time.time() # Start timer for total script execution

        for year in range(start_year, end_year + 1):
            for variant in variants:
                start_time_download = time.time() # Time for download part
                html_content = download_wiki_page(session, year, contest_type, variant) # Pass session here
                download_time = time.time() - start_time_download
                print(f"Download time for {contest_type} {year} {variant}: {download_time:.2f} seconds")

                if html_content:
                    start_time_extract = time.time() # Time for extract part
                    problems, _ = extract_problems(html_content) # Discard solutions
                    extract_time = time.time() - start_time_extract
                    print(f"Problem extraction time for {contest_type} {year} {variant}: {extract_time:.2f} seconds")

                    output_filename_prefix = f"{contest_short_name}_{year}_{variant}"
                    tex_filepath = create_latex_document(contest_type, {(year, variant): problems}, str(year), output_filename_prefix + "_Problems", contest_short_name, output_folder, "problems", is_combined=False, year=year, variant=variant) # year-specific problems, year folder
                    start_time_compile = time.time() # Time for compilation part
                    pdf_filepath = compile_latex_to_pdf(tex_filepath, keep_temp_files=keep_temp_files_option, output_folder=output_folder) # Compile and get PDF path, using tex_filepath, pass keep_temp_files option
                    compile_time = time.time() - start_time_compile
                    print(f"Compilation time for {contest_type} {year} {variant}: {compile_time:.2f} seconds")

                    if pdf_filepath:
                        pdf_filepaths.append(pdf_filepath)

                    problems_by_year_variant[(year, variant)] = problems # Store with (year, variant) tuple

        # Create combined PDFs
        year_range_combined = f"{start_year}-{end_year}"
        tex_filepath_combined = create_latex_document(contest_type, problems_by_year_variant, year_range_combined, f"{contest_short_name}_Combined_Problems", contest_short_name, output_folder, "problems", is_combined=True) # Combined problems, no year folder
        start_time_compile_combined = time.time() # Time for combined compilation
        pdf_filepath_combined = compile_latex_to_pdf(tex_filepath_combined, keep_temp_files=keep_temp_files_option, output_folder=output_folder) # Compile and get PDF path, pass keep_temp_files option
        compile_time_combined = time.time() - start_time_compile_combined
        print(f"Compilation time for Combined {contest_type}: {compile_time_combined:.2f} seconds")
        if pdf_filepath_combined:
            pdf_filepaths.append(pdf_filepath_combined)

        end_time_total = time.time() # End timer for total script execution
        total_time = end_time_total - start_time_total
        print(f"\nTotal script execution time: {total_time:.2f} seconds") # Print total time

    print(f"\nPDF generation complete (problems only) for {contest_type}. PDFs are in the 'output' folder, with year-specific PDFs in year folders and combined PDFs in the main folders.")
    print(f"\n--- IMPORTANT ---\nIf LaTeX compilation failed, check the console output for detailed LaTeX error messages or the log files in the 'temp' directories (if they were kept, keep_temp_files option is currently set to: {keep_temp_files_option}).\n---")

    # Store all temporary directories for later cleanup
    temp_directories = []
    for pdf_filepath in pdf_filepaths:
        output_dir = os.path.dirname(pdf_filepath)
        temp_dir = os.path.join(output_dir, "temp")
        if os.path.exists(temp_dir):
            temp_directories.append(temp_dir)

    # Ask user about temporary files at the end
    delete_temp_files_prompt = input("\nDo you want to delete temporary files (log, aux, etc.)? ([y]es/[n]o): ").lower()
    if delete_temp_files_prompt in ['yes', 'y']:
        for temp_dir in temp_directories:
            try:
                shutil.rmtree(temp_dir)
                print(f"Deleted temporary directory: {temp_dir}")
            except Exception as e:
                print(f"Error deleting temporary directory {temp_dir}: {e}")
    else:
        print("\nTemporary files are kept in 'temp' subdirectories within each output folder.")
