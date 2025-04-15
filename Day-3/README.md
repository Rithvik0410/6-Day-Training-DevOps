📅 Day 3 – Infrastructure Automation using Terraform
✅ Activities Covered:
What is Terraform?
Terraform is an Infrastructure as Code (IaC) tool that allows you to automate the provisioning and management of cloud resources such as EC2 instances, subnets, load balancers, VPCs, databases, internet gateways, etc., using scripts.

Why Use Terraform?
Instead of manually creating resources from the AWS Console, Terraform lets us automate the entire infrastructure setup with reusable and version-controlled .tf scripts.

⚙️ Setup Steps:
Install Terraform on a Linux System
Download Terraform and set the binary path properly.

Set the Terraform Path:
Ensure the system recognizes the Terraform executable via environment variables or moving it to /usr/local/bin.

Configure AWS CLI:
Install the AWS CLI and configure credentials using:

aws configure
🛠️ Terraform Script Structure
When writing Terraform files, the following block types are commonly used:

provider block – Specifies the cloud provider (e.g., AWS, Azure).

resource block – Defines the cloud resource you want to create (e.g., EC2 instance, VPC).

variable block / .tfvars file – Declares inputs for your scripts to make them dynamic and reusable.

output block / output.tf – Prints important values like public IPs or resource IDs to the console.

📝 Example: ec2.tf

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "web" {
ami = "ami-02f624c08a83ca16f"
instance_type = "t2.micro"
key_name = "ash-server"

tags = {
Name = "rithvik"
}
}
To create an EC2 instance, ensure the following details are provided:

Amazon Machine Image (AMI) ID

Instance type (e.g., t2.micro)

Key pair name

Storage (default or customized)

Instance tag name

🧪 Commands Used:

Command Description
terraform init Initializes the working directory and downloads necessary plugins
terraform validate Validates the configuration for syntax errors
terraform plan Shows a preview of the changes Terraform will make
terraform apply Applies the configuration to create the resources
terraform destroy Destroys all resources created by Terraform
Note:

After terraform plan or apply, a terraform.tfstate file is created to store the current infrastructure state. This file is sensitive and should be securely stored, ideally using Terraform Cloud or a remote backend.

Never push .tfstate files to GitHub.

💡 Key Takeaways:
Understood the power of Infrastructure as Code with Terraform.

Wrote and executed scripts to automatically launch AWS EC2 instances.

Learned the structure of .tf files and command workflows.

Recognized the importance of secure state file storage.

Gained clarity on how blocks like provider, resource, variable, and output work together in a Terraform project.
