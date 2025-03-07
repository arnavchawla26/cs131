#!/bin/bash

# Get current date and time for filenames
timestamp=$(date "+%F-%T")

# Define the dataset file
dataset="2019-01-h1.csv"

# Check if the dataset exists
if [[ ! -f "$dataset" ]]; then
    echo "Dataset not found: $dataset"
    exit 1
fi

# Extract header (first line of the CSV)
header=$(head -n 1 "$dataset")

# Define the vendor IDs to process (1.0, 2.0, 4.0)
vendor_ids=("1.0" "2.0" "4.0")

# Process each vendor ID
for vendor in "${vendor_ids[@]}"; do
    output_file="${timestamp}-${vendor}.csv"

    # Extracting rows where the vendorid matches
    (echo "$header"; awk -F',' -v vid="$vendor" '$1 == vid' "$dataset") > "$output_file"

    # Adding the generated file to .gitignore
    echo "$output_file" >> .gitignore
done

# Creating ws4.txt with line counts for the three vendor files and .gitignore contents
{
    wc -l "${timestamp}-1.0.csv"
    wc -l "${timestamp}-2.0.csv"
    wc -l "${timestamp}-4.0.csv"
    echo "--- .gitignore contents ---"
    cat .gitignore
} > ws4.txt

echo "Check ws4.txt, process complete"
