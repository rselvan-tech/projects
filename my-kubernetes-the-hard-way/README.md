
*****************This work is still under development ******************************

### ⚖️ License and Attribution (CC BY-NC-SA 4.0)

This tutorial is a **modified version** of the original developed by [Mumshad](https://github.com/ddometita/mmumshad-kubernetes-the-hard-way).

The original work is used and attributed here under the **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) license**.

This adapted version is also licensed under the **identical CC BY-NC-SA 4.0 license**.

***

### 📝 Non-Commercial Use Justification

This project is intended solely for personal development and educational practice (to learn Kubernetes and deployment skills). This work is strictly **non-commercial**. I am not selling the resulting configuration, documentation, or any derivative training based on it, and I am only sharing it freely with other individuals for learning purposes.

***

# ⚙️ Changes to the Original Version

* 3 Control plane nodes instead of 2.
* Use **containerd** instead of Docker.
* Use **Cilium** instead of Weave Net.
* All component versions are changed to the latest stable versions available at the time of this implementation.

## Target Audience

The target audience for this tutorial is someone planning to support a production Kubernetes cluster and wants to understand how everything fits together.

## Cluster Details

Kubernetes The Hard Way guides you through bootstrapping a highly available Kubernetes cluster with end-to-end encryption between components and RBAC authentication.

* [Kubernetes](https://github.com/kubernetes/kubernetes) 1.13.0
* [Docker Container Runtime](https://github.com/containerd/containerd) 18.06
* [CNI Container Networking](https://github.com/containernetworking/cni) 0.7.5
* [Weave Networking](https://www.weave.works/docs/net/latest/kubernetes/kube-addon/)
* [etcd](https://github.com/coreos/etcd) v3.3.9
* [CoreDNS](https://github.com/coredns/coredns) v1.2.2

## Labs

* [Prerequisites](docs/01-prerequisites.md)
* [Provisioning Compute Resources](docs/02-compute-resources.md)
* [Installing the Client Tools](docs/03-client-tools.md)
* [Provisioning the CA and Generating TLS Certificates](docs/04-certificate-authority.md)
* [Generating Kubernetes Configuration Files for Authentication](docs/05-kubernetes-configuration-files.md)
* [Generating the Data Encryption Config and Key](docs/06-data-encryption-keys.md)
* [Bootstrapping the etcd Cluster](docs/07-bootstrapping-etcd.md)
* [Bootstrapping the Kubernetes Control Plane](docs/08-bootstrapping-kubernetes-controllers.md)
* [Bootstrapping the Kubernetes Worker Nodes](docs/09-bootstrapping-kubernetes-workers.md)
* [TLS Bootstrapping the Kubernetes Worker Nodes](docs/10-tls-bootstrapping-kubernetes-workers.md)
* [Configuring kubectl for Remote Access](docs/11-configuring-kubectl.md)
* [Deploy Weave - Pod Networking Solution](docs/12-configure-pod-networking.md)
* [Kube API Server to Kubelet Configuration](docs/13-kube-apiserver-to-kubelet.md)
* [Deploying the DNS Cluster Add-on](docs/14-dns-addon.md)
* [Smoke Test](docs/15-smoke-test.md)
* [E2E Test](docs/16-e2e-tests.md)
* [Extra - Dynamic Kubelet Configuration](docs/17-extra-dynamic-kubelet-configuration.md)
