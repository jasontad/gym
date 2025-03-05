#!/bin/bash

# Download MuJoCo
wget https://mujoco.org/download/mujoco210-linux-x86_64.tar.gz

# Create directory for MuJoCo installation
mkdir -p ~/.mujoco

# Extract the MuJoCo archive to the created directory
tar -xvf mujoco210-linux-x86_64.tar.gz -C ~/.mujoco/
rm -rf mujoco210-linux-x86_64.tar.gz

# Append environment variables to .bashrc
echo -e '\n# MuJoCo setup' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=~/.mujoco/mujoco210/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia' >> ~/.bashrc
echo 'export PATH="$LD_LIBRARY_PATH:$PATH"' >> ~/.bashrc
echo 'export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so' >> ~/.bashrc

# Source the updated .bashrc to apply changes
source ~/.bashrc

# Navigate to the MuJoCo binary directory
cd ~/.mujoco/mujoco210/bin

# Run the MuJoCo simulation
./simulate ../model/humanoid.xml

# Make the script executable
# chmod +x 241202_setup_mujoco.sh

# Run the script
# ./241202_setup_mujoco.sh
