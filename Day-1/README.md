# **Day-1 – Jenkins Setup and Build**

## **Objective**

The goal of Day-1 was to set up Jenkins on a Windows machine and configure it to automatically build a Maven-based Java web application sourced from a GitHub repository.

---

## **Step-by-Step Breakdown**

### **1. Jenkins Installation on Windows**

- Downloaded the **Jenkins Long-Term Support (LTS)** version from the official Jenkins website.
- Installed Jenkins as a **Windows service** using the setup wizard.
- During installation:
  - Specified the default port `8080` for Jenkins.
  - Unlocked Jenkins by retrieving the initial admin password from:  
    `C:\Program Files\Jenkins\secrets\initialAdminPassword`
  - Installed the **recommended plugins** during the setup wizard.
  - Created the first **admin user account** with a username, password, and email address.
  - Completed the setup and accessed the Jenkins dashboard at `http://localhost:8080`.

---

### **2. Plugin Installation**

Installed the necessary plugins to support project building and SCM integration:

- **Git Plugin** – For connecting to GitHub repositories.
- **Maven Integration Plugin** – To use Maven for building Java projects.
- **Pipeline Plugin** – To define and manage CI/CD pipelines using Jenkinsfile syntax.
- Additional helpful plugins installed:
  - **Blue Ocean** – For a modern UI pipeline view.
  - **GitHub Integration Plugin**
  - **Pipeline: GitHub Groovy Libraries**

---

### **3. Global Tool Configuration**

Configured essential build tools under **Manage Jenkins > Global Tool Configuration**:

#### a. Git

- Installed Git on the system and set the path in Jenkins (e.g., `C:\Program Files\Git\bin\git.exe`).
- Verified Git version via Jenkins interface.

#### b. Maven

- Downloaded and extracted **Apache Maven**.
- Added a new Maven installation in Jenkins:
  - Name: `Maven 3.9.6`
  - Installation path: e.g., `C:\Program Files\Apache\Maven\apache-maven-3.9.6`
- Set the environment variable `MAVEN_HOME` (optional but recommended).

#### c. JDK

- Ensured **Java 17** was installed on the system.
- Set the `JAVA_HOME` variable (e.g., `C:\Program Files\Java\jdk-17`).
- Added Java 17 in Jenkins global tool configuration:
  - Name: `Java 17`
  - Path to JDK: Verified using `java -version` in Command Prompt.

---

### **4. Cloning the GitHub Repository**

- Chose a sample **Maven-based Java web application** from GitHub.
- Example repo: `https://github.com/sample-org/maven-web-app`
- Verified the repository has a `pom.xml` and supports Maven builds.
- Checked out the code locally to inspect the Jenkinsfile (if already present) or prepared to create one manually.

---

### **5. Creating a Pipeline Job in Jenkins**

- On Jenkins Dashboard:
  - Clicked on **“New Item”**
  - Named the job: `Maven-WebApp-Build`
  - Selected **Pipeline** as the job type
  - Clicked OK

#### Pipeline Configuration:

- Under **Pipeline > Definition**, selected:
  - `Pipeline script from SCM`
  - SCM: Git
  - Repository URL: `https://github.com/sample-org/maven-web-app`
  - Credentials: Used GitHub credentials (if private repo)
  - Branch: `main` or `master`

### **6. Running the Pipeline**

- Clicked on **“Build Now”** to trigger the pipeline.
- Jenkins checked out the code, resolved dependencies, compiled the source code, ran tests, and packaged the application.
- All stages executed successfully with green status indicators.

---

## **Tools Used**

- **Jenkins (LTS Version)** – For orchestrating CI pipeline
- **Git** – For version control and code checkout
- **Apache Maven 3.9.6** – Build and dependency management
- **Java 17 JDK** – Java compiler and runtime
- **Windows 10/11** – Development environment

---

## **Outcome**

✅ Jenkins was successfully installed and configured on the local Windows machine.  
✅ Essential plugins and global tools (Git, Maven, Java) were properly set up.  
✅ A GitHub-hosted Maven Java project was integrated into Jenkins using a pipeline job.  
✅ The pipeline executed cleanly, verifying the ability to automate code checkout, build, and packaging through Jenkins.

---
