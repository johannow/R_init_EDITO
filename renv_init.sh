# Print a message indicating the start of the initialization
#!/bin/bash

# Print a message indicating the start of the initialization
echo "Starting initialization based on renv.lock file..."

R -e 'install.packages("renv", repos="https://cloud.r-project.org")'
R -e 'renv::restore(clean = TRUE)'

