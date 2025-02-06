#!/bin/bash
packages=("maven" "openjdk-17-jdk")

# Update package list
sudo apt update

# Loop through packages and install each one
for package in "${packages[@]}"; do
    echo "Installing $package..."
    sudo apt install -y $package
    if [ $? -eq 0 ]; then
        echo "$package installed successfully!"
    else
        echo "Failed to install $package. Please check for errors."
    fi
    echo "-----------------------------------"
done

# Verify installations
mvn -version && java -version

# End of script
echo "All installations are complete!"
