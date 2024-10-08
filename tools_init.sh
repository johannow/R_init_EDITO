# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Starting initialization..."

# Install the necessary R packages
R -e 'if(!require("pak"))install.packages("pak")'
R -e '
packages <- c("arrow", "tidyverse", "doParallel", "rasterVis", "mapview", 
             "ENMeval", "dynamicSDM", "gridExtra", "pak", "raster", "spThin",
             "BiocManager", "Rarr", "worrms", "stars", "foreach", "terra")

pak::pkg_install(packages)
'
