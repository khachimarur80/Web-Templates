#!/bin/bash


for image_file in ./*.jpg ./*.png ./*.jpeg; do
  if [ -f "$image_file" ]; then
    filename=$(basename -- "$image_file")
    filename_no_ext="${filename%.*}"

    cwebp "$image_file" -o "./$filename_no_ext.webp"
    
    echo "Converted: $filename"

    rm "$image_file"
    echo "Deleted: $filename"
  fi
done

echo "Conversion complete!"