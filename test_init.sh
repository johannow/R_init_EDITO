# Print a message indicating the start of the initialization
#!/bin/bash
echo "Starting initialization based on renv.lock file..."

RUN apt-get update && apt-get install -y \
    libffi-dev \
    python3 python3-venv python3-pip \
