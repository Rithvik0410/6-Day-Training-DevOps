md
🚀 Kubernetes Overview
Step 1:
Create a jump server (or bastion host) and connect to the server instance.

Step 2:
Install the necessary tools: kubectl, ecsctl, and awscli.

What is Kubernetes?
Kubernetes is a powerful container orchestration tool that automates deployment, scaling, and management of containerized applications. It manages a cluster of nodes, ensuring that your applications run smoothly, even in large-scale environments.

Steps to Set Up Kubernetes 🌐
Create a Jump Server (Bastion Host) 🌐
First, set up a jump server that will act as the gateway to access your Kubernetes cluster.

Install Necessary Tools 🛠️

Install kubectl, ecsctl, and awscli for managing the Kubernetes environment.
Configure your AWS CLI with aws configure (Enter Access Key & Secret Key).
Kubernetes Cluster Components 🖧
1. Master Node Components 👑
API Server 🖥️: The "brain" of the cluster. It manages everything, including scaling and load balancing.
ETCD 📚: A key-value store for all cluster data.
Controller Manager 🔧: Monitors and ensures the desired state of your applications.
Scheduler 📅: Decides where to place Pods (the smallest deployable units).
2. Worker Node Components 🧑‍💻
Kubelet 🔄: Responsible for creating and managing Pods in the worker node.
Container Runtime 🛠️: Like Docker, it runs and manages containers.
Kube-Proxy 🌐: A networking component that manages access to the application over the internet.
Cluster Types 🏗️
On-Premises Cluster 🏢
Managed by your team, including handling downtime and troubleshooting.

Cloud Managed Cluster (EKS) ☁️
Managed by AWS, reducing the burden of maintenance.

Important Kubernetes Concepts 💡
Pod 🏃‍♂️: The smallest deployable unit in Kubernetes, containing containers.
Scaling 📈:
Horizontal Scaling ➡️ Adding more nodes.
Vertical Scaling ⬆️ Increasing node resources.
Self-Healing 🔄: Automatically replaces failed containers or nodes.
Kubernetes Architecture in Detail 🏰
Master Node 👑

The API Server is the main point of interaction for managing the Kubernetes cluster.
ETCD stores the configuration and state.
Controller monitors the cluster and ensures the desired state is maintained.
Scheduler assigns tasks (Pods) to the worker nodes.
Worker Node 🧑‍💻

Kubelet: Ensures the Pods are running as expected.
Container Runtime: Manages containers on the node.
Kube-Proxy: Handles network routing for Pods.
Kubernetes Resource Units 🧮
CPU 💻: 1 CPU = 1000 millicores (m).
Memory 🧠: 1 GB = 1024 MB.

