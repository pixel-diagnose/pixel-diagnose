#!/bin/bash

# Set your Google Cloud Storage bucket name
bucket_name="upenn-gbm-nifti"

# Set the path to your local folder
local_folder="./automated_segm"
echo "hi!"

# Enable nullglob to handle the case where no files match the pattern
shopt -s nullglob

# Iterate through each file in the local folder
for file_path in "$local_folder"/*; do
    echo "in the for loop"
    echo "$file_path"
    if [ -f "$file_path" ]; then
        # Extract part of the filename for the folder name
        filename=$(basename "$file_path")
        folder_name=$(echo "$filename" | cut -d'_' -f1-2)
        echo "$folder_name"
        # Upload the file to Google Cloud Storage
        gsutil cp "$file_path" "gs://$bucket_name/PKG-UPENN-GBM-NIfTI/UPENN-GBM/NIfTI-files/images_structural/$folder_name/"
    fi
done

