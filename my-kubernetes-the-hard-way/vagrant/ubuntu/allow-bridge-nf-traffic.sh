#!/bin/bash
# Script for essential kernel prerequisites

# 1. Load required modules
modprobe overlay
modprobe br_netfilter

# 2. Configure sysctl parameters for Kubernetes networking
cat <<EOF | tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

# 3. Apply sysctl parameters immediately
sysctl --system