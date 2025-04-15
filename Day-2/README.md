# 📅 **Day 2 – AWS Setup, Load Balancing & Deploying from GitHub**

## **Objective**

To gain hands-on experience with AWS cloud infrastructure, including setting up EC2 instances, securely connecting to them, deploying code from GitHub, and configuring an Application Load Balancer (ALB) for scalability and availability.

---

## ✅ **Activities Covered**

### **1. AWS Account Setup**

- Each team member created and configured their **individual AWS accounts**.
- Enabled necessary services and ensured access to **EC2 (Elastic Compute Cloud)** and **Load Balancer** features.
- Familiarized ourselves with the AWS Management Console and service dashboards.

---

### **2. EC2 Instance Launch**

- Launched a new **EC2 instance** using the **Amazon Linux 2 AMI** (Amazon Machine Image).
- Selected instance type: `t2.micro` (eligible for free tier).
- Generated and downloaded a `.pem` file (private key) during instance creation for **SSH access**.
- Opened port **22 (SSH)** and **custom ports (e.g., 80, 3000)** in the **Security Group** for secure access.

#### 🔐 Example: Set permissions on the `.pem` file

```bash
sudo chmod 400 rithvik.pem
```

---

### **3. SSH Access to EC2**

- Used the `.pem` file to securely connect to the EC2 instance from a Linux system:

```bash
ssh -i "rithvik.pem" ec2-user@ec2-3-23-45-67.compute-1.amazonaws.com
```

- Upon successful connection, gained terminal access to the cloud server instance.

---

### **4. Instance Preparation & Package Updates**

- Once inside the EC2 shell:
  - Updated the system and installed essential tools:

```bash
sudo yum update -y
sudo yum install git -y
```

---

### **5. GitHub Integration & Deployment**

- **Forked** a sample project repository from GitHub.
- **Cloned** the forked repository to the EC2 instance using Git:

```bash
git clone https://github.com/your-username/sample-web-app.git
```

- Navigated to the project directory and ran the application (e.g., using Node.js, Python, or by compiling Java/Maven projects depending on the app type).
- Verified that the application was successfully running on the EC2 public IP with the appropriate port.

---

### **6. Application Load Balancer (ALB) Configuration**

- Created an **Application Load Balancer** via the EC2 console:
  - Defined listeners (typically on port 80 or 443).
  - Added **two or more EC2 instances** to the **Target Group**.
  - Configured **health checks** to monitor instance status.
  - Verified load balancing by sending HTTP requests to the ALB’s DNS endpoint and checking response from different EC2 nodes.

---

### **7. Load Balancer Shutdown**

- After testing functionality, **terminated the Load Balancer** to:
  - **Avoid unnecessary billing**, since ALBs are a paid AWS resource.
  - Demonstrate cost-conscious cloud resource management.

---

## 💡 **Key Takeaways**

- ✅ Gained practical understanding of **EC2** instances and cloud server provisioning.
- ✅ Learned how to use `.pem` files to **securely connect** to cloud servers using SSH.
- ✅ Understood **Amazon Linux environment setup** and installed packages via `yum`.
- ✅ Practiced **pulling code from GitHub** into a cloud server and **running web apps**.
- ✅ Explored the purpose and use of **Application Load Balancers** for traffic distribution and fault tolerance.
- ✅ Reinforced the importance of **resource cleanup** to manage AWS billing effectively.
