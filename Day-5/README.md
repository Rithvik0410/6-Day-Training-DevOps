# 📅 **Day 5 – 🚀 Kubernetes Overview**

---

## 🪜 Step-by-Step Setup

### **Step 1: Create a Jump Server (Bastion Host)**

- Set up a **jump server** to act as a secure entry point to your Kubernetes cluster.

### **Step 2: Install Required Tools**

- Install the following:
  - `kubectl` – Kubernetes command-line tool
  - `ecsctl` – Tool to manage ECS clusters
  - `awscli` – AWS CLI for interacting with AWS services
- Run `aws configure` to set up your AWS credentials.

---

## ❓ What is Kubernetes?

**Kubernetes** is a **container orchestration platform** that automates:

- **Deployment**
- **Scaling**
- **Maintenance**
- **Networking**

It manages a **cluster of nodes** and ensures application reliability, even in complex environments.

---

## 🌐 Setting Up Kubernetes

### 🔹 Create a Jump Server

- Acts as a **gateway** to your Kubernetes cluster.

### 🔹 Install Essential Tools

- `kubectl`, `ecsctl`, `awscli`
- Set up with AWS credentials for cluster access

---

## 🖧 Kubernetes Cluster Components

### 👑 **Master Node Components**

| Component                 | Description                                             |
| ------------------------- | ------------------------------------------------------- |
| **API Server** 🖥️         | The central control unit of the cluster.                |
| **ETCD** 📚               | A distributed key-value store holding all cluster data. |
| **Controller Manager** 🔧 | Ensures the desired state of the system is maintained.  |
| **Scheduler** 📅          | Assigns Pods to nodes based on availability and need.   |

---

### 🧑‍💻 **Worker Node Components**

| Component                | Description                                                        |
| ------------------------ | ------------------------------------------------------------------ |
| **Kubelet** 🔄           | Interacts with the container runtime and ensures Pods are running. |
| **Container Runtime** 🛠️ | Software like Docker that runs containers.                         |
| **Kube-Proxy** 🌐        | Manages network rules and allows Pods to communicate.              |

---

## 🏗️ Types of Kubernetes Clusters

| Type                       | Managed By | Responsibility Level                                  |
| -------------------------- | ---------- | ----------------------------------------------------- |
| **On-Premises** 🏢         | Your team  | Full responsibility (updates, backups, scaling, etc.) |
| **Cloud Managed (EKS)** ☁️ | AWS        | AWS manages control plane; you manage worker nodes    |

---

## 💡 Key Kubernetes Concepts

- **Pod** 🏃‍♂️: Smallest deployable unit in Kubernetes; contains one or more containers.
- **Scaling** 📈:
  - **Horizontal** ➡️: Add more Pods.
  - **Vertical** ⬆️: Increase Pod resources.
- **Self-Healing** 🔄:
  - Automatically restarts, replaces, or reschedules failed containers and nodes.

---

## 🏰 Kubernetes Architecture Overview

### Master Node 👑

- **API Server**: Handles all REST commands for the cluster.
- **ETCD**: Stores state/configuration.
- **Controller Manager**: Keeps the system in the desired state.
- **Scheduler**: Assigns workloads (Pods) to available worker nodes.

### Worker Node 🧑‍💻

- **Kubelet**: Runs and reports status of containers.
- **Container Runtime**: Runs containerized apps.
- **Kube-Proxy**: Manages network access to Pods.

---

## 🧮 Kubernetes Resource Units

- **CPU** 💻:
  - `1 CPU` = `1000 millicores (m)`
- **Memory** 🧠:
  - `1 GB` = `1024 MB`
