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

# Constants
WIKI_CACHE_DIR = "wiki_cache"
os.makedirs(WIKI_CACHE_DIR, exist_ok=True)

ASY_CACHE_DIR = "asy_cache"
os.makedirs(ASY_CACHE_DIR, exist_ok=True)

ASY_MODULES = {
    "olympiad": "https://math.berkeley.edu/~monks/images/olympiad.asy",
    "cse5": "https://raw.githubusercontent.com/vEnhance/dotfiles/master/asy/cse5.asy"
}

# https://artofproblemsolving.com/wiki/index.php/Category:Mathematics_competitions
CONTEST_CONFIGS = {
    "AMC 12": {
        "variants": ["A", "B"],
        "title_templates": [
            {"template": "{year}_AMC_12{variant}_Problems", "years": "all"},
            {"template": "{year}_Fall_AMC_12{variant}_Problems", "years": [2021]}
        ],
        "display_name": "AMC 12",
        "output_subdir": "AMC12"
    },
    "AMC 10": {
        "variants": ["A", "B"],
        "title_templates": [
            {"template": "{year}_AMC_10{variant}_Problems", "years": "all"},
            {"template": "{year}_Fall_AMC_10{variant}_Problems", "years": [2021]}
        ],
        "display_name": "AMC 10",
        "output_subdir": "AMC10"
    },
        "AMC 8": {
        "variants": [],
        "title_templates": [
            {
                "template": "{year}_AMC_8_Problems", 
                "years": "all",
                "exclude_years": [2021]  # COVID year exclusion
            }
        ],
        "display_name": "AMC 8",
        "output_subdir": "AMC8"
    },
    "AIME": {
        "variants": ["I", "II"],
        "title_templates": [{"template": "{year}_AIME_{variant}_Problems", "years": "all"}],
        "display_name": "AIME",
        "output_subdir": "AIME"
    },
    "USAMO": {
        "variants": [],  # No variants
        "title_templates": [
            {"template": "{year}_USAMO_Problems", "years": "all"}
        ],
        "display_name": "USAMO",
        "output_subdir": "USAMO"
    },
    "USAJMO": {
        "variants": [],  # No variants
        "title_templates": [
            {"template": "{year}_USAJMO_Problems", "years": "all"}
        ],
        "display_name": "USAJMO",
        "output_subdir": "USAJMO"
    },
    "IMO": {
        "variants": [],  # No variants
        "title_templates": [
            {"template": "{year}_IMO_Problems", "years": "all"}
        ],
        "display_name": "IMO",
        "output_subdir": "IMO"
    },
}

def calculate_file_hash(filepath):
    """Calculate MD5 hash of the file content."""
    with open(filepath, "rb") as f:
        return hashlib.md5(f.read()).hexdigest()

def normalize_asy_content(content):
    """Clean Asymptote code for consistent hashing"""
    # Remove comments
    content = re.sub(r'//.*?$', '', content, flags=re.MULTILINE)
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
    
    # Remove defaultfilename
    content = re.sub(r'defaultfilename\s*=\s*".*?";', '', content)
    
    # Normalize whitespace
    content = '\n'.join([line.strip() for line in content.split('\n') if line.strip()])
    return content

def should_compile_asy(asy_filepath):
    """Check cache using normalized Asymptote content"""
    with open(asy_filepath, "r") as f:
        raw_content = f.read()
    
    clean_content = normalize_asy_content(raw_content)
    content_hash = hashlib.md5(clean_content.encode()).hexdigest()
    cached_pdf = os.path.join(ASY_CACHE_DIR, f"{content_hash}.pdf")
    cached_asy = os.path.join(ASY_CACHE_DIR, f"{content_hash}.asy")

    if os.path.exists(cached_pdf):
        # Log cache reuse
        print(f"[CACHE] Reusing diagram {os.path.basename(asy_filepath)} from cache (hash: {content_hash})")

        # Store cleaned ASY file for debugging
        if not os.path.exists(cached_asy):
            with open(cached_asy, "w") as f:
                f.write(clean_content)
        
        # Copy cached PDF to temp directory
        temp_pdf = os.path.splitext(asy_filepath)[0] + ".pdf"
        shutil.copyfile(cached_pdf, temp_pdf)
        return False
    
    return True

def run_asymptote_compilation(temp_dir_abs, asy_modules_dir="asy_modules"):
    """Runs Asymptote compilation for all `.asy` files in the temporary directory. Returns (any_compiled, success)."""
    print(f"Compiling Asymptote files...")
    asy_files = [f for f in os.listdir(temp_dir_abs) if f.lower().endswith(".asy")]

    if not asy_files:
        print("No Asymptote files found to compile.")
        return (False, True)  # Corrected return to a tuple

    asy_modules_dir_abs = os.path.abspath(asy_modules_dir).replace("\\", "/")
    
    any_compiled = False
    success = True

    for asy_file in asy_files:
        asy_filepath = os.path.join(temp_dir_abs, asy_file)

        if not should_compile_asy(asy_filepath):
            continue

        any_compiled = True

        env = os.environ.copy()
        env["ASYLANG"] = asy_modules_dir_abs
        env["ASYMPTOTE_DIR"] = asy_modules_dir_abs

        # print(f"Compiling {asy_file} with ASYLANG={env['ASYLANG']}...")
        print(f"Compiling {asy_file}...")

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
            success = False
            break
        else:
            print(f"Successfully compiled {asy_file}.")
            # Save normalized content and PDF to cache
            with open(asy_filepath, "r") as f:
                raw_content = f.read()
            clean_content = normalize_asy_content(raw_content)
            content_hash = hashlib.md5(clean_content.encode()).hexdigest()
            
            cached_pdf = os.path.join(ASY_CACHE_DIR, f"{content_hash}.pdf")
            cached_asy = os.path.join(ASY_CACHE_DIR, f"{content_hash}.asy")
            compiled_pdf = os.path.splitext(asy_filepath)[0] + ".pdf"
        
            # Store both PDF and cleaned ASY
            shutil.copyfile(compiled_pdf, cached_pdf)
            with open(cached_asy, "w") as f:
                f.write(clean_content)

            # Log cache storage
            print(f"[CACHE] Stored {os.path.basename(asy_filepath)} to cache with hash {content_hash}")

    return (any_compiled, success)

def should_compile_tex(tex_filepath, output_pdf_path):
    """Determine if LaTeX should be compiled, storing hash in temp directory."""
    # Hash path based on LaTeX file location in temp directory
    hash_path = os.path.splitext(tex_filepath)[0] + ".hash"
    current_hash = calculate_file_hash(tex_filepath)

    if os.path.exists(output_pdf_path) and os.path.exists(hash_path):
        with open(hash_path, "r") as f:
            cached_hash = f.read().strip()
        if cached_hash == current_hash:
            print(f"Skipping LaTeX compilation for {tex_filepath}: No changes detected.")
            return False

    with open(hash_path, "w") as f:
        f.write(current_hash)
    return True

def run_latex_compilation(tex_filepath, cwd, pass_num, output_pdf_path):
    """Runs a single pass of LaTeX compilation. Returns (compiled, success)."""
    tex_filename_base = os.path.splitext(os.path.basename(tex_filepath))[0]
    if not should_compile_tex(tex_filepath, output_pdf_path):
        return (False, True)  # No compilation, success

    print(f"Compiling LaTeX (pass {pass_num}) for {tex_filename_base} in temporary directory...")
    command_latex = ['pdflatex', '-interaction=nonstopmode', '--shell-escape', os.path.basename(tex_filepath)]
    process_latex = subprocess.Popen(command_latex, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=cwd)
    stdout_latex, stderr_latex = process_latex.communicate()

    if process_latex.returncode != 0:
        error_message = stderr_latex.decode('utf-8', errors='ignore')
        print(f"Error in LaTeX pass {pass_num} for {tex_filename_base}.tex. LaTeX exited with code {process_latex.returncode}")
        print(f"LaTeX Error Output:\n{error_message}")
        print(f"\n--- LaTeX Compilation (Pass {pass_num}) Failed. Check the console output for LaTeX errors. ---")
        return (True, False)  # Compiled but failed
    else:
        print(f"LaTeX pass {pass_num} for {tex_filename_base}.tex completed.")
        return (True, True)  # Compiled and succeeded

def compile_latex_to_pdf(tex_filepath, asy_modules_dir_abs):
    """Compile LaTeX to PDF with Asymptote in a 'temp' subdirectory and move PDF to the base folder."""
    tex_filename_base = os.path.splitext(os.path.basename(tex_filepath))[0]
    temp_dir = os.path.dirname(tex_filepath)
    output_dir = os.path.dirname(os.path.dirname(temp_dir))  # Move up from temp/ to base output directory
    temp_dir_abs = os.path.abspath(temp_dir)
    output_pdf_path = os.path.join(output_dir, tex_filename_base + ".pdf")

    compilation_occurred = False

    try:
        cwd = temp_dir_abs

        # Pass 1
        compiled_pass1, success_pass1 = run_latex_compilation(tex_filepath, cwd, 1, output_pdf_path)
        if not success_pass1:
            return None
        compilation_occurred |= compiled_pass1

        if not install_asymptote_modules(asy_modules_dir_abs):
            return None

        # Asymptote compilation
        any_asy_compiled, asy_success = run_asymptote_compilation(temp_dir_abs, asy_modules_dir_abs)
        if not asy_success:
            return None
        compilation_occurred |= any_asy_compiled

        # Pass 2
        compiled_pass2, success_pass2 = run_latex_compilation(tex_filepath, cwd, 2, output_pdf_path)
        if not success_pass2:
            return None
        compilation_occurred |= compiled_pass2

        # Only move PDF if compilation occurred
        if compilation_occurred:
            if not move_pdf_output(temp_dir_abs, output_dir, tex_filename_base):
                return None
        else:
            print(f"No final LaTeX pass needed; preserving existing PDF for {tex_filename_base}.")

        print(f"Successfully compiled {tex_filename_base}.tex to PDF.")
        return output_pdf_path

    except Exception as e:
        print(f"\nAn unexpected error occurred during compilation: {e}")
        return None

def move_pdf_output(temp_dir_abs, output_dir, tex_filename_base):
    """Move the compiled PDF to the output directory ONLY if compilation occurred"""
    pdf_filename = tex_filename_base + ".pdf"
    temp_pdf_filepath = os.path.join(temp_dir_abs, pdf_filename)
    output_pdf_filepath = os.path.join(output_dir, pdf_filename)

    if not os.path.exists(temp_pdf_filepath):
        print(f"Error: Temp PDF file {temp_pdf_filepath} not found.")
        return False

    try:
        # Always replace existing PDF since we only get here if compilation occurred
        if os.path.exists(output_pdf_filepath):
            os.remove(output_pdf_filepath)
            print(f"Removed existing PDF: {output_pdf_filepath}")
            
        shutil.move(temp_pdf_filepath, output_pdf_filepath)
        print(f"Moved PDF to: {output_pdf_filepath}")
        return True
    except Exception as e:
        print(f"Error moving PDF file: {e}")
        return False

def remove_metadata(latex_content):
    """Removes metadata tags like [[...]] and 'Solution:' or 'Problem:' from LaTeX content."""
    content_without_tags = re.sub(r'\[\[.*?\]\]', '', latex_content)
    content_without_metadata = re.sub(r'^\s*(Solution|Problem):\s*$', '', content_without_tags, flags=re.MULTILINE | re.IGNORECASE)
    return content_without_metadata

def get_cache_filename(title):
    """Generates a safe filename for caching based on the wiki title."""
    safe_title = title.replace(" ", "_").replace("/", "_")
    return os.path.join(WIKI_CACHE_DIR, f"{safe_title}.html")

async def async_download_wiki_page(session, title, contest_type, year, use_cache=True):
    """Asynchronously downloads the AoPS Wiki page for a given title, using cache."""
    # Create organized cache directory structure
    cache_dir = os.path.join("wiki_cache", contest_type, str(year))
    os.makedirs(cache_dir, exist_ok=True)
    cache_filename = os.path.join(cache_dir, f"{title}.html")

    if use_cache and os.path.exists(cache_filename):
        print(f"Using cached wiki page for: {title}")
        with open(cache_filename, "r", encoding="utf-8") as f:
            return title, f.read()

    url = f"https://artofproblemsolving.com/wiki/index.php?title={title}&action=edit"
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

    wiki_text = textarea.get_text()
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

def generate_latex_header(contest_display_name, year_range_str, doc_type):
    """Generates the LaTeX header content (preamble only)."""
    return r"""
\documentclass{article}
\usepackage{amsmath, amssymb}
\usepackage{geometry}
\geometry{a4paper, margin=0.75in}
\usepackage{enumitem}
\usepackage[hypertexnames=true, linktoc=all]{hyperref}
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
\fancyhead[L]{\textbf{""" + contest_display_name + r""" """ + doc_type.capitalize() + r"""}}
\fancyhead[R]{\textbf{""" + year_range_str + r"""}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\title{""" + contest_display_name + r""" """ + doc_type.capitalize() + r""" \\ """ + year_range_str + r"""}
\date{}
"""

def generate_latex_footer():
    """Generates the LaTeX footer content."""
    return r"""
\end{document}
"""

def escape_latex_special_chars(content):
    """Escape LaTeX special characters within nowiki tags."""
    special_chars = {
        '\\': r'\textbackslash{}',
        '{': r'\{',
        '}': r'\}',
        '&': r'\&',
        '%': r'\%',
        '$': r'\$',
        '#': r'\#',
        '_': r'\_',
        '^': r'\^{}',
        '~': r'\textasciitilde{}',
    }
    # Replace special characters with their escaped versions
    for char, escape in special_chars.items():
        content = content.replace(char, escape)
    return content

def escape_non_math_content(content):
    """Escape LaTeX special characters in non-math/non-environment parts of the content."""
    # Regex to match ALL LaTeX environments (including math, asy, align, etc.)
    # and inline/display math. This ensures we don't escape characters inside these blocks.
    protected_pattern = re.compile(
        r'(\\\(.*?\\\)|'                    # Inline math \(...\)
        r'\\\[.*?\\\]|'                     # Display math \[...\]
        r'\$\$.*?\$\$|'                     # $$...$$
        r'\\begin\{(\w+)\*?\}.*\\end\{\2\*?\})',  # Greedy match for environments
        re.DOTALL | re.IGNORECASE
    )

    parts = []
    last_pos = 0

    for match in protected_pattern.finditer(content):
        start = match.start()
        end = match.end()
        
        # Process non-protected content before this match
        non_protected = content[last_pos:start]
        escaped = escape_latex_special_chars(non_protected)
        parts.append(escaped)
        
        # Add the protected content as-is
        parts.append(match.group(0))
        last_pos = end

    # Process remaining content after the last match
    non_protected = content[last_pos:]
    escaped = escape_latex_special_chars(non_protected)
    parts.append(escaped)

    return ''.join(parts)

def process_html_tags(content):
    """Convert HTML tags to LaTeX using a comprehensive mapping, handling nested tags."""
    html_tag_handlers = {
        # Inline tags
        'b': {'latex': 'textbf', 'block': False},
        'i': {'latex': 'textit', 'block': False},
        'em': {'latex': 'textit', 'block': False},
        'strong': {'latex': 'textbf', 'block': False},
        'u': {'latex': 'underline', 'block': False},
        'code': {'latex': 'texttt', 'block': False},
        'sup': {'latex': 'textsuperscript', 'block': False},
        'sub': {'latex': 'textsubscript', 'block': False},
        'a': {'latex': 'href', 'block': False, 'attr': 'href'},
        
        # Block tags
        'center': {'latex': 'center', 'block': True},
        'ul': {'latex': 'itemize', 'block': True},
        'ol': {'latex': 'enumerate', 'block': True},
        'li': {'latex': 'item', 'block': False, 'directive': True},
        'p': {'latex': 'par', 'block': True, 'directive': True},
        'blockquote': {'latex': 'quote', 'block': True},
        'pre': {'latex': 'verbatim', 'block': True},
        
        # Special cases
        'br': {'latex': '\\\\', 'block': False, 'self_closing': True},
        'hr': {'latex': '\\hline', 'block': True, 'self_closing': True},
        'nowiki': {'latex': 'texttt', 'block': False},  # Special handling
    }

    tags = '|'.join(re.escape(tag) for tag in html_tag_handlers.keys())
    standard_pattern = re.compile(
        rf'<({tags})(\s+[^>]*)?>(.*?)</\1>', 
        flags=re.DOTALL | re.IGNORECASE
    )
    self_closing_pattern = re.compile(
        rf'<({tags})(\s+[^>]*?)?[/\\]>',  # Matches both /> and \>
        flags=re.IGNORECASE
    )

    def replace_tag(match):
        tag = match.group(1).lower()
        attrs = match.group(2) or ''
        content = match.group(3) if len(match.groups()) >= 3 else ''
        handler = html_tag_handlers.get(tag, None)

        if not handler:
            return match.group(0)

        if handler.get('self_closing', False):
            return handler['latex'] + '\n'

        attr_value = ''
        if 'attr' in handler:
            attr_pattern = re.compile(r'{}\s*=\s*["\'](.*?)["\']'.format(handler['attr']), re.IGNORECASE)
            attr_match = attr_pattern.search(attrs)
            if attr_match:
                attr_value = attr_match.group(1)

        # Special handling for <nowiki> tags
        if tag == 'nowiki':
            escaped_content = escape_latex_special_chars(content.strip())
            return f'\\texttt{{{escaped_content}}}'

        processed_content = process_html_tags(content.strip())

        if handler.get('directive', False):
            if tag == 'a' and attr_value:
                return f'\\href{{{attr_value}}}{{{processed_content}}}'
            return f'\\{handler["latex"]} {processed_content}\n'
        elif handler['block']:
            latex_env = handler['latex']
            # Only add \item if it's specifically for itemize or enumerate
            if tag in ['ul', 'ol'] and r'\item' not in processed_content:
                processed_content = r'\item ' + processed_content
            return f'\\begin{{{latex_env}}}\n{processed_content.strip()}\n\\end{{{latex_env}}}\n'
        else:
            return f'\\{handler["latex"]}{{{processed_content}}}'

    def replace_self_closing(match):
        tag = match.group(1).lower()
        handler = html_tag_handlers.get(tag, None)
        if not handler or not handler.get('self_closing', False):
            return match.group(0)
        return handler['latex'] + '\n'

    content = self_closing_pattern.sub(replace_self_closing, content)
    while True:
        new_content, count = standard_pattern.subn(replace_tag, content)
        if count == 0:
            break
        content = new_content

    # Clean up line breaks adjacent to block environments
    content = re.sub(r'\\\\\s*\\begin{', r'\\begin{', content, flags=re.IGNORECASE)
    content = re.sub(r'\\end{([^}]*?)}\s*\\\\', r'\\end{\1}', content, flags=re.IGNORECASE)

    return content

def replace_cmath(match):
    """Handle cmath content with multi-line environments."""
    cmath_content = match.group(1)
    multi_line_envs = ['align', 'gather', 'multline', 'alignat', 'eqnarray', 'flalign', 'split']
    for env in multi_line_envs:
        env_pattern = re.compile(rf'\\begin\{{{env}\*?\}}(.*?)\\end\{{{env}\*?\}}', re.DOTALL)
        if env_pattern.search(cmath_content):
            return f'\n{cmath_content.strip()}\n'
    
    cleaned = re.sub(r'\\\[|\\\]|\$\$|\\begin{equation\*?}|\\end{equation\*?}|\\begin{displaymath}|\\end{displaymath}', '', cmath_content, flags=re.IGNORECASE)
    cleaned = re.sub(r'\\\(|\\\)|\$|\\begin{math}|\\end{math}', '', cleaned, flags=re.IGNORECASE)
    return f'\n\\begin{{equation*}}\n{cleaned.strip()}\n\\end{{equation*}}\n'

def replace_over_with_frac(content):
    """Replace \\over with \\frac."""
    return re.sub(r'{([^}]*?)\\over([^}]*?)}', r'\\frac{\1}{\2}', content)

def fix_blank_line(content):
    """Replace multiple underscores with proper LaTeX blank line"""
    # Replace series of underscores with proper LaTeX blank
    content = re.sub(
        r'_{3,}', 
        r'\\underline{\\hspace{2cm}}', 
        content
    )
    return content

def process_problem_content(problem):
    """Process individual problem content with robust math/asymptote handling."""
    # Extract Asymptote code first
    parts = []
    current_pos = 0
    while True:
        asy_start = problem.find('<asy>', current_pos)
        if asy_start == -1:
            parts.append(problem[current_pos:])
            break
        if asy_start > current_pos:
            parts.append(problem[current_pos:asy_start])
        asy_end = problem.find('</asy>', asy_start)
        if asy_end == -1:
            parts.append(problem[asy_start:])
            break
        asy_code = problem[asy_start + 5:asy_end].strip()
        
        # Fix ambiguous Ticks calls using regex substitution
        asy_code = re.sub(
            r'(?<!graph\.)(Ticks\()',  # negative lookbehind to avoid double replacement
            r'graph.Ticks(',
            asy_code
        )
        
        if asy_code:
            parts.append(f'\n\\begin{{center}}\n\\begin{{asy}}\nimport olympiad;\nimport cse5;\n{asy_code}\n\\end{{asy}}\n\\end{{center}}\n')
        current_pos = asy_end + 6

    problem = ''.join(parts)
    problem = process_html_tags(problem)
    problem = re.sub(r'<math>(.*?)</math>', r'\\(\1\\)', problem, flags=re.DOTALL)
    problem = re.sub(r'<cmath>(.*?)</cmath>', replace_cmath, problem, flags=re.DOTALL)
    problem = re.sub(r'\\begin{aligned\*}', r'\\begin{aligned}', problem)
    problem = re.sub(r'\\end{aligned\*}', r'\\end{aligned}', problem)

    # Escape LaTeX-sensitive characters before unescaping
    problem = re.sub(
        r'(&amp;|&#(?:35|36|37|95|123|125|126|94|92);)',
        r'\\\1',
        problem
    )

    # Unescape HTML entities
    problem = html.unescape(problem)
    
    problem = fix_blank_line(problem)

    # Escape LaTeX special characters in non-math parts
    problem = escape_non_math_content(problem)

    # Convert \over to \frac
    problem = replace_over_with_frac(problem)

    return problem

def process_problems(problems_by_title, is_combined):
    """Processes problems using original wiki titles for sections."""
    latex_content_body = ""
    
    if is_combined:
        titles = sorted(problems_by_title.keys())
    else:
        titles = [next(iter(problems_by_title))]
        
    for title in titles:
        # Format title
        display_title = title.replace("_", " ")
        if not is_combined:
            display_title = display_title.replace(" Problems", "")
            
        # Add section header
        latex_content_body += r"\section*{" + display_title + "}"
        if is_combined:
            latex_content_body += r"\addcontentsline{toc}{section}{" + display_title + "}\n"
            
        # Process problems
        latex_content_body += "\n" + r"\begin{enumerate}[label=\arabic*., itemsep=0.5em]" + "\n"
        for problem in problems_by_title[title]:
            processed_problem = process_problem_content(problem)
            latex_content_body += r"\item " + processed_problem + r"\par \vspace{0.5em}"
        latex_content_body += "\n" + r"\end{enumerate}" + "\n"
        
        if is_combined:
            latex_content_body += r"\newpage"

    return latex_content_body

def write_latex_to_file(tex_filepath, latex_content):
    """Writes the LaTeX content to a file."""
    os.makedirs(os.path.dirname(tex_filepath), exist_ok=True)
    with open(tex_filepath, "w", encoding="utf-8") as f:
        f.write(latex_content)

def create_latex_document(contest_display_name, problems_by_title, year_range_str, output_filename_prefix, output_folder, doc_type, is_combined=False):
    """Creates LaTeX document using original wiki titles for sections."""
    latex_header = generate_latex_header(contest_display_name, year_range_str, doc_type)
    latex_content_body = process_problems(problems_by_title, is_combined)
    latex_footer = generate_latex_footer()

    document_start = r"\begin{document}" + r"\maketitle" + r"\thispagestyle{fancy}"
    if is_combined:
        document_start += r"\tableofcontents\newpage"
    else:
        document_start += r"\newpage"

    latex_content = latex_header + document_start + latex_content_body + latex_footer

    # Determine base output directory
    if is_combined:
        folder = "Combined"
    else:
        folder = "Individual"
    
    base_output_dir = os.path.join(output_folder, contest_display_name, doc_type.capitalize(), folder)

    temp_dir = os.path.join(base_output_dir, "temp", output_filename_prefix)
    os.makedirs(temp_dir, exist_ok=True)
    tex_filepath = os.path.join(temp_dir, output_filename_prefix + ".tex")

    write_latex_to_file(tex_filepath, latex_content)
    return tex_filepath

def install_asymptote_modules(asy_modules_dir):
    """Checks for and installs required Asymptote modules."""
    for module_name, module_url in ASY_MODULES.items():
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

async def main():
    # Input handling
    start_year = None
    end_year = None
    valid_contest_types = list(CONTEST_CONFIGS.keys())
    contest_type = None
    
    print("Available contests:")
    for contest in valid_contest_types:
        print(f" - {contest}")
    
    while contest_type not in valid_contest_types:
        contest_type = input("Enter contest type (case-insensitive, whitespace-sensitive): ").strip().upper()
        
        if contest_type not in valid_contest_types:
            print(f"Invalid contest type: '{contest_type}'. Please choose from the list above.")

    contest_config = CONTEST_CONFIGS[contest_type]

    # Year input handling remains the same
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

    # Directory setup using config
    output_folder = "output"
    output_folder_abs = os.path.abspath(output_folder)

    # Module installation with absolute path
    asy_modules_dir_abs = os.path.abspath("asy_modules")
    os.makedirs(asy_modules_dir_abs, exist_ok=True)
    if not install_asymptote_modules(asy_modules_dir_abs):
        print("Module installation failed. Exiting.")
        exit()

    problems_by_title = {}
    pdf_filepaths = []

    async with aiohttp.ClientSession() as session:
        start_time_total = time.time()
        download_tasks = []

        # Generate download tasks using config
        for year in range(start_year, end_year + 1):
            for template in contest_config["title_templates"]:
                # Year inclusion check
                if template["years"] != "all" and year not in template.get("years", []):
                    continue
                    
                # Year exclusion check
                if year in template.get("exclude_years", []):
                    continue

                # Handle variants
                if contest_config["variants"]:
                    for variant in contest_config["variants"]:
                        title = template["template"].format(year=year, variant=variant)
                        download_tasks.append(async_download_wiki_page(session, title, contest_type, year))
                else:
                    title = template["template"].format(year=year)
                    download_tasks.append(async_download_wiki_page(session, title, contest_type, year))

        download_results = await asyncio.gather(*download_tasks)

        for title, html_content in download_results:
            if not html_content:
                continue

            problems = extract_problems(html_content)
            problems_by_title[title] = problems

            # Extract year from title (first part of the title string)
            title_year = title.split('_')[0]
            
            # Create individual PDF
            tex_filepath = create_latex_document(
                contest_config["display_name"],
                {title: problems},
                title_year,
                title,
                output_folder_abs,
                "problems",
                is_combined=False
            )
            
            start_time_compile = time.time()
            pdf_filepath = compile_latex_to_pdf(tex_filepath, asy_modules_dir_abs)
            compile_time = time.time() - start_time_compile
            print(f"Compilation time for {title}: {compile_time:.2f} seconds")
            
            if pdf_filepath:
                pdf_filepaths.append(pdf_filepath)

        # Create combined PDF
        year_range_combined = f"{start_year}-{end_year}"
        combined_filename = f"{contest_config['output_subdir']}_Combined_Problems_{year_range_combined}"
        tex_filepath_combined = create_latex_document(
            contest_config["display_name"],
            problems_by_title,
            year_range_combined,
            combined_filename,
            output_folder_abs,
            "problems",
            is_combined=True
        )
        
        start_time_compile_combined = time.time()
        pdf_filepath_combined = compile_latex_to_pdf(tex_filepath_combined, asy_modules_dir_abs)
        compile_time_combined = time.time() - start_time_compile_combined
        print(f"Compilation time for Combined {contest_type}: {compile_time_combined:.2f} seconds")
        
        if pdf_filepath_combined:
            pdf_filepaths.append(pdf_filepath_combined)

        # Final output
        end_time_total = time.time()
        total_time = end_time_total - start_time_total
        print(f"\nTotal script execution time: {total_time:.2f} seconds")
        print(f"\nPDF generation complete. PDFs are in the 'output' folder.")
        print("\n---\nIf LaTeX compilation failed, check the log files in temp directories for detailed LaTeX error messages.\nIf you do not intend on re-using existing files for larger combined PDFs, feel free to delete all cache and module files.\n---")

        # Cleanup
        delete_temp_files_prompt = input("\nDelete temporary files? ([y]es/[n]o): ").lower()
        if delete_temp_files_prompt in ['yes', 'y']:
            for pdf_filepath in pdf_filepaths:
                output_dir = os.path.dirname(pdf_filepath)
                temp_dir = os.path.join(output_dir, "temp")
                if os.path.exists(temp_dir):
                    try:
                        shutil.rmtree(temp_dir)
                        print(f"Deleted temporary directory: {temp_dir}")
                    except Exception as e:
                        print(f"Error deleting {temp_dir}: {e}")
        else:
            print("\nTemporary files are kept in 'temp' subdirectories.")


if __name__ == "__main__":
    asyncio.run(main())