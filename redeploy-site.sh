#!/bin/bash

# Navigate to the project directory
cd /root/MLH-Portfolio/ || exit

# Fetch and reset to the latest changes from the main branch on GitHub
echo "Fetching latest changes from GitHub..."
git fetch && git reset origin/main --hard

# Activate the Python virtual environment
echo "Activating the virtual environment..."
source /root/MLH-Portfolio/app/python3-virtualenv/bin/activate

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Restart the myportfolio service
echo "Restarting myportfolio service..."
sudo systemctl restart myportfolio.service

echo "Redeployment complete."
