# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Starting initialization based on renv.lock file..."

R -e 'install.packages("renv", repos="https://cloud.r-project.org")'

echo "Changing into DUC folder..."
cd ~/work/duc42_ga

R -e 'renv::restore(clean = TRUE)'

