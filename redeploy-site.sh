#!/bin/bash

# Navigate to the project directory
cd /root/MLH-Portfolio/ || exit

# Fetch and reset to the latest changes from the main branch on GitHub
echo "Fetching latest changes from GitHub..."
git fetch && git reset origin/main --hard

# Stop and remove existing containers
echo "Stopping and removing existing Docker containers..."
docker compose -f docker-compose.prod.yml down

# Build and start the containers
echo "Building and starting Docker containers..."
docker compose -f docker-compose.prod.yml up -d --build

echo "Redeployment complete."

chmod +x "$0"
