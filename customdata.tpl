#!/bin/bash

# Update package index
sudo apt-get update -y &&  

# Install prerequisite packages
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common &&

# Add Docker's official GPG key
curl -fsSl https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && 

# Add Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&

# Update package index again
sudo apt-get update -y &&

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io &&

# Add the current user to the "docker" group
sudo usermod -aG docker ubuntu
