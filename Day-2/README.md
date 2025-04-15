📅 Day 2 – AWS Setup, Load Balancing & Deploying from GitHub
✅ Activities Covered:
AWS Account Setup:
Created and configured our individual AWS accounts for hands-on cloud infrastructure experience.

EC2 Instance Launch:
Launched an EC2 instance using Amazon Linux. While creating the instance, we downloaded a .pem (private key) file for secure SSH access, as we were using a Linux system.
Example command to set proper permissions on the .pem file:

sudo chmod 400 rithvik.pem
SSH into EC2 Instance:
Connected to the instance using the .pem file:
ssh -i "rithvik.pem" ec2-user@ec2-3-23-45-67.compute-1.amazonaws.com
Activate Amazon Linux & Update Packages:
Once connected, we updated and prepared the system for software installation:

sudo yum update -y && sudo yum install git -y
GitHub Integration & Project Deployment:
Forked a project repository from GitHub, cloned it to the instance, and ran the application inside the EC2 environment.

Load Balancer Configuration:
Set up an Application Load Balancer (ALB) to distribute incoming traffic across multiple EC2 instances for high availability and fault tolerance.

Shutdown of Load Balancer:
After testing, we terminated the Load Balancer to avoid unnecessary charges, as it incurs additional costs on AWS.

💡 Key Takeaways:
Understood the fundamentals of AWS EC2 and Load Balancing.

Learned secure SSH practices using .pem keys on Linux.

Deployed code from GitHub to a cloud server.

Managed AWS costs by identifying and shutting down unused services.
