#!/bin/bash

# Path to the external file containing package names
package_file="packages.txt"

# Check if the file exists
if [ ! -f "$package_file" ]; then
    echo "Package list file $package_file not found!"
    exit 1
fi

# Update package list
sudo apt update

# Loop through the packages listed in the external file
while IFS= read -r package; do
    # Skip empty lines and comments (lines starting with #)
    if [[ -z "$package" || "$package" =~ ^# ]]; then
        continue
    fi

    echo "Installing $package..."
    sudo apt install -y "$package"
    if [ $? -eq 0 ]; then
        echo "$package installed successfully!"
    else
        echo "Failed to install $package. Please check for errors."
    fi
    echo "-----------------------------------"
done < "$package_file"
# Verify installations
mvn -version && java -version

# End of script
echo "All installations are complete!"
