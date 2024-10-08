# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Starting initialization..."

# Install the necessary R packages
R -e 'packages <- c("pak")'
R -e '
packages <- c("arrow", "tidyverse", "doParallel", "rasterVis", "mapview", 
             "ENMeval", "dynamicSDM", "gridExtra", "pak", "raster", "spThin",
             "BiocManager", "Rarr", "worrms", "stars", "foreach", "terra")

# Function to check and install missing packages
install_if_missing <- function(pkg){
  if (!requireNamespace(pkg, quietly = TRUE)){
    install.packages(pkg, dependencies = TRUE)
  }
}

# Install CRAN packages
invisible(sapply(packages, install_if_missing))

# Install Bioconductor packages if necessary
# Example for Bioconductor package installation
# BiocManager::install("YourBioconductorPackage")

# Optionally load the packages to verify installation
# lapply(packages, library, character.only = TRUE)
'

# Check if R package installation was successful
if [ $? -ne 0 ]; then
  echo "R package installation failed. Exiting."
  exit 1
fi

# Restart R session if RStudio is detected
R -e '
if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
  cat("Restarting R session in RStudio...\n")
  rstudioapi::restartSession()
} else {
  cat("RStudio not detected, continuing without restarting.\n")
}
'





