# 📅 **Day 6 🧑‍💻 Kubernetes Commands & Concepts**

---

## 🌐 Managing Namespaces

Namespaces in Kubernetes let you **partition a cluster** into multiple virtual environments.

### 🔹 Common Namespace Commands:

```bash
# List namespaces
kubectl get namespace

# Show all resources in kube-system
kubectl get all -n kube-system

# Create a new namespace
kubectl create ns rithvik

# List all namespaces
kubectl get ns
```

---

## 🚀 Running Pods in a Namespace

```bash
# Run a Pod in namespace 'rithvik'
kubectl run test-pod --image=nginx --port=80 -n rithvik

# Check Pods in 'rithvik'
kubectl get pods -n rithvik

# Delete a Pod in namespace 'ash'
kubectl delete pod test-pod -n ash
```

---

## 🔄 ReplicaSet (rs.yaml)

ReplicaSet ensures a **specific number of replicas** of a Pod are always running.

```bash
# Clone the repo (manually)
git clone <repo-url>

# Apply ReplicaSet
kubectl apply -f rs.yaml

# Get Pods & ReplicaSets in 'ash'
kubectl get pods -n ash
kubectl get rs -n ash

# Debug a pending Pod
kubectl describe pod <pod-name> -n ash

# Delete ReplicaSet
kubectl delete rs cart-page-rs -n ash
```

> ✅ ReplicaSets ensure high availability  
> ❌ No built-in rollback → Use Deployments for lifecycle management

---

## 🚀 Deployments

Deployments provide **version control, rollbacks, and rolling updates**.

```bash
# Apply deployment config
kubectl apply -f deployment.yaml -n ash

# Check Deployment and Pods
kubectl get deployments -n ash
kubectl get pods -o wide -n ash
```

---

## 🌐 Services

Kubernetes Services provide **network access** to Pods.

```bash
# Create a Service
kubectl apply -f service.yaml

# Apply resource with specific namespace
kubectl apply -f name.yaml -n ash

# Get service endpoint URL and ports
kubectl get svc -n ash
```

### 🔹 Types of Services

| Type             | Description                                 |
| ---------------- | ------------------------------------------- |
| **ClusterIP**    | Internal-only service                       |
| **NodePort**     | Exposes app via a port on each node         |
| **LoadBalancer** | External access through cloud load balancer |

---

## 📚 Kubernetes Core Concepts

### 🔸 What is a Namespace? 🌏

- Logical cluster separation.
- Ideal for multi-project environments.
- **Avoid using `default` namespace for production.**

---

## ⚠️ Pod Failure Management

| Problem      | Solution                             |
| ------------ | ------------------------------------ |
| App Downtime | Use **ReplicaSet** or **Deployment** |
| IP Changes   | Use **Kubernetes Services**          |
| Data Loss    | Attach **Persistent Volumes (PVs)**  |

---

## 🔄 ReplicaSet vs 🎯 Deployment

| Feature            | ReplicaSet           | Deployment          |
| ------------------ | -------------------- | ------------------- |
| Maintain Pod Count | ✅                   | ✅                  |
| Rollbacks          | ❌                   | ✅                  |
| Rolling Updates    | ❌                   | ✅                  |
| Best Use           | Stable replica count | Full lifecycle mgmt |

---

## 📊 Monitoring Kubernetes Applications

### Prometheus

- Collects time-series data (CPU, memory, etc.)

### Grafana

- Visualizes metrics in real-time dashboards.

---

## 🔧 Configuration Management

### Ansible

- Automates Kubernetes resource setup & deployment.
- Ideal for managing large infrastructure with ease.
