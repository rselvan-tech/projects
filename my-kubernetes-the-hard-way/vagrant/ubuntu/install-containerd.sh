#!/bin/bash
# Script to install and configure containerd on Ubuntu for Kubernetes.

set -e

echo "--- 1. Installing required dependencies ---"
apt update
apt install -y curl software-properties-common ca-certificates apt-transport-https gnupg

echo "--- 2. Adding Docker's GPG key and Repository (for containerd) ---"
install -m 0755 -d /etc/apt/keyrings
# Add GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add repository to Apt sources
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "--- 3. Installing containerd.io package ---"
apt update
apt install -y containerd.io

echo "--- 4. Configuring containerd for Kubernetes (SystemdCgroup = true) ---"
mkdir -p /etc/containerd
containerd config default | tee /etc/containerd/config.toml > /dev/null

# Modify the SystemdCgroup setting from false to true for K8s compatibility
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml

echo "--- 5. Starting and Enabling the containerd Service ---"
systemctl daemon-reload
systemctl enable --now containerd

echo "--- 6. Verification ---"
echo "containerd installation status:"
systemctl status containerd | grep "Active"
echo "containerd client version:"
ctr version

echo "--- containerd Installation Complete! ---"
