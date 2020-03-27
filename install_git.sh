#! /bin/bash

echo "Runnning system package update check..."

apt-get update

echo "Runnning system package upgrade if any..."

apt upgrade -y

echo "Installing latest git..."

sudo apt installl git