# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Install necessary system dependencies..."
# Update package list and install dependencies
sudo apt-get update && sudo apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    libpng-dev \
    libgdal-dev \
    libproj-dev \
    libgeos-dev \
    zlib1g-dev \
    libudunits2-dev \
    libsodium-dev \
    build-essential \
    pkg-config \
    python3 \
    python3-venv \
    python3-pip

# Clean up to reduce image size / disk usage
sudo rm -rf /var/lib/apt/lists/*


echo "Starting initialization based on renv.lock file..."

R -e 'install.packages("renv", repos="https://cloud.r-project.org")'

echo "Changing into DUC folder..."
cd ~/work/duc42_ga

R -e 'renv::restore(clean = TRUE)'

