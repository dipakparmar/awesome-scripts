#! /bin/bash

echo "Runnning system package update check..."

apt-get update

echo "Runnning system package upgrade if any..."

apt upgrade -y

echo "Downloading latest docker script from https://get.docker.com"

curl -fsSL https://get.docker.com -o get-docker.sh

echo "Running get-docker.sh script..."

sudo sh get-docker.sh

echo "Adding current user to docker group"

sudo usermod -aG docker $USER


