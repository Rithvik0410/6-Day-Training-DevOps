# 📅 **Day 3 – Infrastructure Automation using Terraform**

## **Objective**

To understand the fundamentals of **Infrastructure as Code (IaC)** using **Terraform**, and automate the provisioning of cloud resources such as EC2 instances on AWS.

---

## ✅ **Activities Covered**

### 🌐 **What is Terraform?**

Terraform is a powerful **open-source IaC tool** developed by HashiCorp. It allows us to define and manage cloud infrastructure through declarative configuration files written in **.tf (HCL - HashiCorp Configuration Language)** format.

Instead of manually navigating the AWS Console, Terraform lets us:

- **Automate** cloud provisioning.
- **Version control** infrastructure.
- **Re-use and scale** scripts for different environments.

---

### 🔍 **Why Use Terraform?**

- Eliminates human error by automating repetitive tasks.
- Infrastructure becomes **documented, reproducible, and auditable**.
- Supports **multi-cloud deployments** (AWS, Azure, GCP, etc.).
- Ideal for **DevOps pipelines**, ensuring consistent infrastructure setup.

---

## ⚙️ **Setup Steps**

### ✅ 1. **Install Terraform on Linux**

- Download the appropriate Terraform binary from the [official website](https://www.terraform.io/downloads).
- Unzip the archive and move the binary to a directory in your system's `PATH`.

```bash
sudo mv terraform /usr/local/bin/
terraform -v  # Confirm installation
```

---

### ✅ 2. **Configure AWS CLI**

To allow Terraform to interact with AWS services:

```bash
sudo yum install awscli -y
aws configure
```

- Enter your **AWS Access Key**, **Secret Key**, **Region**, and **Output format**.

---

## 🛠️ **Terraform Script Structure**

Terraform files are modular and consist of the following key blocks:

| Block Type | Description                                                 |
| ---------- | ----------------------------------------------------------- |
| `provider` | Defines the cloud provider (e.g., AWS, Azure, GCP).         |
| `resource` | Declares the infrastructure components (e.g., EC2, VPC).    |
| `variable` | Parameterizes inputs to make scripts reusable and dynamic.  |
| `output`   | Displays important results like public IPs or instance IDs. |

---

### 📝 **Example: `ec2.tf` File**

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-02f624c08a83ca16f"
  instance_type = "t2.micro"
  key_name      = "ash-server"

  tags = {
    Name = "rithvik"
  }
}
```

#### ✅ Key Configuration Elements:

- **AMI ID** – Specifies the OS image to use.
- **Instance Type** – Defines hardware (e.g., `t2.micro` for free tier).
- **Key Pair** – Used for secure SSH access.
- **Tags** – Helps with resource identification and management.

---

## 🧪 **Terraform Workflow & Commands**

| Command              | Description                                                       |
| -------------------- | ----------------------------------------------------------------- |
| `terraform init`     | Initializes the working directory and downloads provider plugins. |
| `terraform validate` | Validates configuration for syntax and logic errors.              |
| `terraform plan`     | Generates an execution plan (shows what will change).             |
| `terraform apply`    | Applies the configuration to create/update resources.             |
| `terraform destroy`  | Tears down the infrastructure defined in the scripts.             |

> ⚠️ **Important**: After `terraform apply`, a `terraform.tfstate` file is generated. This file holds the current infrastructure state and **should be kept secure**.

---

### 🧷 **Best Practices:**

- **Never commit `.tfstate` files to version control.**
- Use **Terraform Cloud**, **S3**, or **remote backends** to store state files securely.
- Parameterize your scripts with `variables.tf` and `terraform.tfvars` for reusability.
- Use output variables for integration into other pipelines or for quick access to important data.

---

## 💡 **Key Takeaways**

- Gained **hands-on experience** in writing Terraform configuration files.
- Successfully **automated the creation of an EC2 instance** with a few lines of code.
- Understood the **structure and roles** of Terraform blocks (`provider`, `resource`, `variable`, `output`).
- Learned the **Terraform command lifecycle** from initialization to destruction.
- Recognized the importance of **state management** and the **security of `.tfstate` files**.
