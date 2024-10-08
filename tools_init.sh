# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Starting initialization..."

# Install the necessary R packages
R -e 'install.packages('pak')'
R -e '
packages <- c("arrow", "tidyverse", "doParallel", "rasterVis", "mapview", 
             "ENMeval", "dynamicSDM", "gridExtra", "pak", "raster", "spThin",
             "BiocManager", "Rarr", "worrms", "stars", "foreach", "terra")

pak::pkg_install(packages)
'

# Restart R session if RStudio is detected
R -e '
if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
  cat("Restarting R session in RStudio...\n")
  rstudioapi::restartSession()
} else {
  cat("RStudio not detected, continuing without restarting.\n")
}
'





