import html
import re
from bs4 import BeautifulSoup, Tag, NavigableString

def process_html_tags(content):
    """Convert HTML to LaTeX while preserving existing math delimiters."""
    html_tag_handlers = {
        # Inline tags
        'b': {'latex': 'textbf', 'inline': True},
        'i': {'latex': 'textit', 'inline': True},
        'em': {'latex': 'textit', 'inline': True},
        'strong': {'latex': 'textbf', 'inline': True},
        'u': {'latex': 'underline', 'inline': True},
        'code': {'latex': 'texttt', 'inline': True},
        'sup': {'latex': 'textsuperscript', 'inline': True},
        'sub': {'latex': 'textsubscript', 'inline': True},
        'a': {'latex': 'href', 'inline': True, 'attr': 'href'},
        
        # Block tags
        'center': {'latex': 'center', 'block': True},
        'ul': {'latex': 'itemize', 'block': True},
        'ol': {'latex': 'enumerate', 'block': True},
        'li': {'latex': 'item', 'directive': True},
        'p': {'latex': 'par', 'block': True, 'directive': True},
        'blockquote': {'latex': 'quote', 'block': True},
        'pre': {'latex': 'verbatim', 'block': True},
        
        # Special cases
        'br': {'latex': '\\\\', 'inline': True, 'self_closing': True},
        'hr': {'latex': '\\hline', 'block': True, 'self_closing': True},
    }

    soup = BeautifulSoup(content, 'html.parser')
    
    def process_tag(element):
        if isinstance(element, NavigableString):
            return str(element)
        
        if not isinstance(element, Tag):
            return ''
        
        handler = html_tag_handlers.get(element.name.lower(), {})
        
        child_contents = []
        for child in element.contents:
            processed = process_tag(child)
            child_contents.append(processed)
        content_str = ''.join(child_contents)

        if handler.get('self_closing', False):
            return handler['latex']

        if element.name == 'a' and 'attr' in handler:
            href = element.get(handler['attr'], '')
            return f'\\{handler["latex"]}{{{href}}}{{{content_str}}}'

        if handler.get('directive', False):
            return f'\\{handler["latex"]} {content_str}'

        if handler.get('block', False):
            return f'\\begin{{{handler["latex"]}}}\n{content_str}\n\\end{{{handler["latex"]}}}'

        if handler.get('inline', False):
            return f'\\{handler["latex"]}{{{content_str}}}'

        return content_str

    processed = []
    for element in soup.find_all(recursive=False):
        processed_content = process_tag(element)
        processed.append(processed_content.strip())
    
    return '\n'.join(processed)

def replace_cmath(match):
    """Convert <cmath> content to display math environment."""
    content = match.group(1).strip()
    return f'\\[\n{content}\n\\]'

def process_problem_content(problem):
    """Final processing with proper math handling."""
    # Handle Asymptote first
    parts = []
    current_pos = 0
    while True:
        asy_start = problem.find('<asy>', current_pos)
        if asy_start == -1:
            parts.append(problem[current_pos:])
            break
        parts.append(problem[current_pos:asy_start])
        asy_end = problem.find('</asy>', asy_start)
        if asy_end == -1:
            parts.append(problem[asy_start:])
            break
        asy_code = problem[asy_start+5:asy_end]
        parts.append(f'\n\\begin{{asy}}\n{asy_code.strip()}\n\\end{{asy}}\n')
        current_pos = asy_end + 6
    problem = ''.join(parts)

    # Convert math tags to LaTeX delimiters BEFORE HTML processing
    problem = re.sub(r'<math>(.*?)</math>', r'\(\1\)', problem, flags=re.DOTALL)
    problem = re.sub(r'<cmath>(.*?)</cmath>', replace_cmath, problem, flags=re.DOTALL)

    # Convert HTML to LaTeX
    problem = process_html_tags(problem)

    # Cleanup and final normalization
    problem = html.unescape(problem)
    problem = re.sub(r'\\\\(\(|\))', r'\\\1', problem)  # Fix escaped delimiters
    problem = re.sub(r'\s+', ' ', problem).strip()
    
    return problem

# Test the solution
result = process_problem_content(r"""
<UL>
<LI> <math>\mathcal{A} \cup \mathcal{B} = \{1,2,3,4,5,6,7,8,9,10,11,12\}</math>,</LI>
<LI> <math>\mathcal{A} \cap \mathcal{B} = \emptyset</math>, </LI>
<LI> The number of elements of <math>\mathcal{A}</math> is not an element of <math>\mathcal{A}</math>,</LI>
<LI> The number of elements of <math>\mathcal{B}</math> is not an element of <math>\mathcal{B}</math>.
</UL>
""")

print(result)