#!/bin/bash

# Set your Google Cloud Storage bucket and folder
bucket="upenn-gbm-nifti"
folder="PKG-UPENN-GBM-NIfTI/UPENN-GBM/NIfTI-files/images_structural"

# List all folders in the bucket
folders=$(gsutil ls gs://$bucket/$folder*/)

# Loop through each folder
for folder_path in $folders; do
    folder_name=$(basename $folder_path)

    # Navigate to the current folder
    gsutil -m cp $folder_path .

    cd $folder_name
     
    # Decompress the .gz file
    gunzip -f *.gz
    
    #remove all .gz files before copying back to bucket
    rm *.gz

    # Copy the decompressed files back to the original folder in the Cloud Storage bucket
    gsutil -m cp * gs://$bucket/$folder_name/
        
    # Clean up by removing the decompressed files (optional)
    rm *
    
    # Navigate back to the parent directory
    cd ..
    break
done
