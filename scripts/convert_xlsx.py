import pandas as pd
import sys
from pathlib import Path

def convert_xlsx_to_csv(xlsx_path_str):
    """
    Converts each sheet of an .xlsx file to a separate .csv file in the 'csv_export' directory using pandas.
    """
    xlsx_path = Path(xlsx_path_str)
    if not xlsx_path.exists():
        print(f"Error: File not found at {xlsx_path}", file=sys.stderr)
        sys.exit(1)

    output_dir = Path('csv_export')
    output_dir.mkdir(exist_ok=True)

    try:
        # Try different engines for reading Excel files
        engines = ['openpyxl', 'xlrd']
        xls = None
        
        for engine in engines:
            try:
                xls = pd.ExcelFile(xlsx_path, engine=engine)
                print(f"  -> Successfully opened with {engine} engine")
                break
            except Exception as engine_error:
                print(f"  -> Failed with {engine}: {engine_error}")
                continue
        
        if xls is None:
            print(f"Error: Could not read {xlsx_path} with any available engine", file=sys.stderr)
            print("  -> This file may be corrupted or in an unsupported format", file=sys.stderr)
            return False
        
        sheets_converted = 0
        for sheet_name in xls.sheet_names:
            try:
                # Read the sheet into a DataFrame
                df = pd.read_excel(xls, sheet_name=sheet_name, header=None)
                
                # Create a sanitized, unique name for the csv file
                sanitized_sheet_name = "".join(c if c.isalnum() or c in '-_' else '_' for c in sheet_name)
                csv_file_name = f"{xlsx_path.stem}_{sanitized_sheet_name}.csv"
                csv_path = output_dir / csv_file_name

                print(f"  -> Converting sheet '{sheet_name}' to '{csv_path}'")

                # Save the DataFrame to a CSV file
                df.to_csv(csv_path, index=False, header=False)
                sheets_converted += 1
                
            except Exception as sheet_error:
                print(f"  -> Warning: Failed to convert sheet '{sheet_name}': {sheet_error}")
                continue
        
        print(f"  -> Successfully converted {sheets_converted}/{len(xls.sheet_names)} sheets")
        return sheets_converted > 0

    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        return False

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python convert_xlsx.py <path_to_xlsx_file>", file=sys.stderr)
        sys.exit(1)
    
    file_to_convert = sys.argv[1]
    print(f"Converting '{file_to_convert}' with pandas...")
    success = convert_xlsx_to_csv(file_to_convert)
    
    if success:
        print("Conversion complete.")
        sys.exit(0)
    else:
        print("Conversion failed.", file=sys.stderr)
        sys.exit(1)