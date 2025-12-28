
import openpyxl
import csv
import sys
from pathlib import Path

def convert_xlsx_to_csv(xlsx_path_str):
    """
    Converts each sheet of an .xlsx file to a separate .csv file in the 'csv_export' directory.
    """
    xlsx_path = Path(xlsx_path_str)
    if not xlsx_path.exists():
        print(f"Error: File not found at {xlsx_path}", file=sys.stderr)
        sys.exit(1)

    output_dir = Path('csv_export')
    output_dir.mkdir(exist_ok=True)

    try:
        workbook = openpyxl.load_workbook(xlsx_path, data_only=True, read_only=True)
        
        for sheet_name in workbook.sheetnames:
            # Create a sanitized, unique name for the csv file
            sanitized_sheet_name = "".join(c if c.isalnum() else '_' for c in sheet_name)
            csv_file_name = f"{xlsx_path.stem}_{sanitized_sheet_name}.csv"
            csv_path = output_dir / csv_file_name

            print(f"  -> Converting sheet '{sheet_name}' to '{csv_path}'")

            with open(csv_path, 'w', newline='', encoding='utf-8') as csvfile:
                writer = csv.writer(csvfile)
                sheet = workbook[sheet_name]
                for row in sheet.rows:
                    writer.writerow([cell.value for cell in row])

    except Exception as e:
        print(f"An error occurred: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python convert_xlsx.py <path_to_xlsx_file>", file=sys.stderr)
        sys.exit(1)
    
    file_to_convert = sys.argv[1]
    print(f"Converting '{file_to_convert}'...")
    convert_xlsx_to_csv(file_to_convert)
    print("Conversion complete.")

