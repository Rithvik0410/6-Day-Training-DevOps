# 📅 **Day 4 – Docker & Containerization**

## ✅ **Activities Covered**

---

## 🐳 **What is Docker?**

Docker is a **containerization platform** that allows developers to build, package, and run applications in isolated environments called **containers**. These containers are **lightweight, portable**, and **platform-independent**, making it easier to deploy applications across different systems with consistency.

### ⚙️ Why Use Docker?

- ✅ **Reduces Infrastructure Costs** by efficiently utilizing system resources.
- ✅ Ensures **consistent environments** across **development, testing, and production**.
- ✅ Supports **microservices architecture** by isolating services in separate containers.
- ✅ Embraces the principle: _“Build once, run anywhere.”_

---

## 🧱 **Architecture Concepts**

### 🔗 Monolithic Architecture:

- All components (frontend, backend, DB) are deployed as a **single unit**.
- A failure in one module can affect the entire system.
- Difficult to scale and maintain.

### 🧩 Microservices Architecture:

- Application is split into **independent services**, each handling a specific function.
- Each service is containerized, promoting **fault isolation** and **scalability**.
- Docker helps reduce resource overhead by **sharing the host OS kernel** among containers.

---

## 🌐 **Environments in the Software Lifecycle**

| Environment    | Purpose                                         |
| -------------- | ----------------------------------------------- |
| **Dev**        | Developers test code functionality              |
| **Testing**    | QA team conducts functional & performance tests |
| **UAT**        | Clients validate the application prototype      |
| **Production** | Final deployment of the live application        |

---

## 📦 **Key Docker Concepts**

| Concept           | Description                                             |
| ----------------- | ------------------------------------------------------- |
| **Container**     | Isolated unit to run applications, sharing the host OS. |
| **Dockerfile**    | Script with instructions to build Docker images.        |
| **Docker Image**  | Snapshot/template used to create containers.            |
| **Docker Hub**    | Cloud-based registry for sharing Docker images.         |
| **Detached Mode** | Run containers in the background using `-d` flag.       |

---

## 🔧 **Dockerfile Instructions Breakdown**

| Instruction     | Purpose                                                |
| --------------- | ------------------------------------------------------ |
| `FROM`          | Specifies the **base image** (e.g., `node:18-alpine`)  |
| `WORKDIR`       | Sets the **working directory** inside the container    |
| `COPY`          | Copies files from **host → container**                 |
| `ADD`           | Like `COPY` but also handles **URLs and archives**     |
| `RUN`           | Executes commands (e.g., installing dependencies)      |
| `.dockerignore` | Lists files/folders to **exclude** from build context  |
| `CMD`           | Sets the **default command** to run in the container   |
| `ENTRYPOINT`    | Similar to CMD but **cannot be overridden at runtime** |
| `EXPOSE`        | Informs Docker which **port** the app listens to       |
| `ENV`           | Defines **environment variables**                      |
| `USER`          | Specifies the **user** the container should run as     |

---

## 🧾 **7-Step Dockerfile Writing Process**

1. **FROM** → Choose a base image
2. **WORKDIR** → Set a working directory
3. **COPY / ADD** → Copy dependencies and project files
4. **RUN** → Install required packages
5. **COPY** → Add application source code
6. **EXPOSE** → Specify the listening port
7. **CMD / ENTRYPOINT** → Define the default runtime command

---

## 🧠 **As a DevOps Engineer, Always Manage:**

- 🔐 **Environment Variables**
- 🔗 **Database Endpoints**
- 🔢 **Port Numbers**
- 📁 **Application Secrets & Config Files**
