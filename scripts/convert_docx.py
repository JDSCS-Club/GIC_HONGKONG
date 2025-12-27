import docx
import sys
from pathlib import Path

def convert_docx_to_txt(docx_path_str):
    """
    Extracts all text from a .docx file and saves it to a .txt file
    in the 'docx_export' directory.
    """
    docx_path = Path(docx_path_str)
    if not docx_path.exists():
        print(f"Error: File not found at {docx_path}", file=sys.stderr)
        sys.exit(1)

    output_dir = Path('docx_export')
    output_dir.mkdir(exist_ok=True)

    try:
        document = docx.Document(docx_path)
        full_text = []
        for para in document.paragraphs:
            full_text.append(para.text)
        
        txt_content = '\n'.join(full_text)
        
        txt_file_name = f"{docx_path.stem}.txt"
        txt_path = output_dir / txt_file_name

        print(f"  -> Extracting text from '{docx_path.name}' to '{txt_path}'")

        with open(txt_path, 'w', encoding='utf-8') as txtfile:
            txtfile.write(txt_content)

    except Exception as e:
        print(f"An error occurred: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python convert_docx.py <path_to_docx_file>", file=sys.stderr)
        sys.exit(1)
    
    file_to_convert = sys.argv[1]
    print(f"Extracting text from '{file_to_convert}'...")
    convert_docx_to_txt(file_to_convert)
    print("Extraction complete.")
