#!/bin/bash

# Set the server login details
server="HOSTNAME"
username="USERNAME"
password="PASSWORD"

day=$(date '+%d')
month=$(date '+%m')
daymonth="$day"_"$month"



dir_name="/path/to/newfolder/$daymonth"
if [ ! -d "$dir_name" ]; then
  mkdir -p "$dir_name"
  echo "Folder created."
else
  echo "Folder already exists."
fi

# Set the CSV file path
xlsx_file="/path/to/xslxfile/$daymonth.xlsx"


# Set the destination directory where folders will be downloaded
destination_directory="/path/to/folder/$daymonth/folder_$daymonth"

if [ ! -d "$destination_directory" ]; then
echo "Folder does not exist. Creating..."
mkdir -p "$destination_directory"
echo "Folder created."
else
  echo "Folder already exists."
fi

# Convert XLSX to CSV using xlsx2csv
csv_file="converted_file.csv"
xlsx2csv -a -d ',' "$xlsx_file" > "$csv_file"

# Remove the line "-------- 1 - Worksheet" from the CSV file
sed -i '1{/^-------- 1 - Worksheet$/d}' "$csv_file"



# Set the maximum length for the folder names
max_length=50

# Function to truncate a string to a specified length
truncate_string() {
  local string="$1"
  local length="$2"

  if [[ ${#string} -gt $length ]]; then
    string="${string:0:$length}"
  fi

  echo "$string"
}

{
  read -r _
  while IFS=',' read -r  id nom prenom _rest
  do
    # Check if the folder should be downloaded based on the ID field
    if [[ ! -z "$id" ]]; then
      # Rename the folder to nom_prenom
      new_folder_name="${nom}_${prenom}"
      new_folder_name=$(echo "$new_folder_name" | tr '[:lower:]' '[:upper:]')

      new_folder_name=$(truncate_string "$new_folder_name" $max_length)
      # Download the folder from the server
      sshpass -p "$password" scp -r "$username@$server:/path/to/folderserver/$id" "$destination_directory/$new_folder_name"
    fi
  done
} < "$csv_file"

# Remove the temporary CSV file
rm "$csv_file"
echo "Directory download and renaming complete."
