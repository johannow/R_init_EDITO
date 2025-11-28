# Print a message indicating the start of the initialization
#!/bin/bash
echo "Installing system dependencies."
apt-get update -y
apt-get install -y \
    libffi-dev \
    python3 \
    python3-venv \
    python3-pip \
    libsecret-1-dev \
    libcurl4-openssl-dev

echo "Changing into DUC folder..."
cd ~/work/duc2_telemetry
