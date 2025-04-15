📅 Day 4 – Docker & Containerization
✅ Activities Covered:
What is Docker?
Docker is a containerization tool that enables developers to build portable, lightweight, and platform-independent applications. It performs OS-level virtualization, allowing multiple applications (microservices) to run on the same host while remaining isolated.

Why Docker?

Reduces server cost

Enables consistent environments across development, testing, and production

Supports microservice architecture by packaging each service into its own container

Helps deploy applications anywhere with the principle: "Build once, run anywhere"

🧱 Architecture Concepts:
Monolithic Architecture:
All components (web, app, DB) are tightly coupled and deployed together. A failure in one module can bring the entire system down.

Microservices Architecture:
Application is split into independent services (loose coupling). Each microservice runs in its own container. If one fails, others remain functional.
Challenge: Each microservice may need a dedicated server → higher cost.
Solution: Docker containers share the same OS kernel, reducing resource usage.

🌐 Environments in Software Lifecycle:

Environment	Description
Dev	Developers test basic functionality
Testing	QA team runs functional, performance, and load tests
UAT (User Acceptance Testing)	Client verifies the prototype before release
Production	Final environment where the live application is deployed
📦 Key Docker Concepts:
Container:
Lightweight, isolated environment to run applications (like a mini virtual machine).

Dockerfile:
A text file with a set of instructions on how to build a Docker image.

Docker Image:
A snapshot/template containing the app, dependencies, libraries, and environment.

Docker Hub:
A cloud-based registry where Docker images are stored and shared.

Detached Mode / Daemon Container:
Running a container in the background using -d flag.

🔧 Dockerfile Instructions Breakdown:

Instruction	Purpose
FROM	Defines base image (e.g., FROM node:18-alpine)
WORKDIR	Sets the working directory inside the container
COPY	Copies files from host to container
ADD	Similar to COPY but can fetch remote files
RUN	Executes commands like installing dependencies
.dockerignore	Specifies files to exclude while building image
CMD	Specifies the default command to run in the container (supports runtime args)
ENTRYPOINT	Similar to CMD but doesn’t allow runtime args override
EXPOSE	Declares the port the app runs on
ENV	Sets environment variables
USER	Specifies which user the container runs as
🔁 Steps to Write a Dockerfile (7 Steps):
Identify the base image (FROM)

Create a working directory (WORKDIR)

Copy dependencies (COPY, ADD)

Install packages (RUN)

Copy source code to container

Expose port (EXPOSE)

Define the start command (CMD or ENTRYPOINT)

🧠 As a DevOps Engineer:
You should collect and manage:

Environment variables

Database endpoints

Port numbers

App secrets/configs
