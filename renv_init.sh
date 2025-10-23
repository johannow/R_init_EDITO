# Print a message indicating the start of the initialization
#!/bin/bash

# Adjust R compiler flags
echo "Configuring R compiler flags..."

mkdir -p ~/.R

cat > ~/.R/Makevars <<EOF
CFLAGS=-g -O2 -Wall
CXXFLAGS=-g -O2 -Wall
EOF

if [ -f /usr/local/lib/R/etc/Makeconf ]; then
    sudo sed -i 's/-Werror=format-security//g' /usr/local/lib/R/etc/Makeconf
    echo "Removed problematic -Werror flag from R Makeconf."
else
    echo "Warning: /usr/local/lib/R/etc/Makeconf not found — skipping sed modification."
fi

echo "Starting initialization based on renv.lock file..."

R -e 'install.packages("renv", repos="https://cloud.r-project.org")'

echo "Changing into DUC folder..."
cd ~/work/duc42_ga

R -e 'renv::restore(clean = TRUE)'

