"""
First you need to install bcrypt lib via the cmds: pip3 install bcrypt.
"""

import bcrypt
import csv


def hash_password(plain_text_password):
    salt = bcrypt.gensalt()
    hashed_password = bcrypt.hashpw(plain_text_password.encode('utf-8'), salt)
    return hashed_password.decode('utf-8')  # Convert bytes to string

def main():
    input_csv_filename = "/path/to/csv_filecsv.csv"
    output_csv_filename = "path/to/csv_file_out.csv"
    with open(input_csv_filename, 'r', newline='', encoding='latin-1') as infile:
        reader = csv.DictReader(infile)
        fieldnames = reader.fieldnames + ["password"] # add the password field at the end of file_csv_out with others fields.

        rows = []
        for row in reader:
            plain_text_password = row['field_in'] # fieldname that you want to hash
            hashed_password = hash_password(plain_text_password)
            row["password"] = hashed_password
            rows.append(row)

    with open(output_csv_filename, 'w', newline='', encoding='utf-8') as outfile:
        writer = csv.DictWriter(outfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

if __name__ == "__main__":
    main()
# this script will return a csv file with old csv file fields plus the field password that contain each hash value of desired field. 
