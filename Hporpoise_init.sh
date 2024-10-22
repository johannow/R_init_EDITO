# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Starting initialization..."

# Install the necessary R packages
R -e 'if(!require("pak"))install.packages("pak")'
R -e '
packages <- c("arules",
                  "arrow",
                  "arulesViz",
                  "BiocManager",
                  "CoordinateCleaner",
                  "dismo",
                  "doParallel",
                  "downloader",
                  "earth",
                  "foreach",
                  "ks",
                  "mgcv",
                  "ows4R",
                  "ranger",
                  "raster",
                  "Rarr",
                  "sdm",
                  "sf",
                  "sp",
                  "spatialEco",
                  "stacks",
                  "stats",
                  "stars",
                  "terra",
                  "tidymodels",
                  "tidyverse",
                  "utils",
                  "worrms",
                  "xgboost")
pak::pkg_install(packages)
'


