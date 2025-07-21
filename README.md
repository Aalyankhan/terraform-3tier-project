

# AWS 3-Tier Architecture with Terraform

This project sets up a **highly available 3-tier architecture** on AWS using Terraform. The infrastructure includes a **VPC**, **public/private subnets**, **Application Load Balancer (ALB)**, **Auto Scaling Group (ASG) of EC2 instances**, and a **Multi-AZ Amazon RDS database**.

---

## 📐 Architecture Overview

- **Tier 1 – Presentation Layer**
  - AWS Application Load Balancer (ALB)
  - Public Subnets
  - Internet Gateway

- **Tier 2 – Application Layer**
  - EC2 Instances in Auto Scaling Group
  - Private Subnets
  - NAT Gateway for internet access

- **Tier 3 – Data Layer**
  - Amazon RDS (MySQL/PostgreSQL)
  - Multi-AZ Deployment
  - Encrypted storage

---

## 📁 Project Structure

```

.
├── alb.tf               # Load Balancer
├── asg.tf               # Auto Scaling Group and EC2 instances
├── backend.tf           # Backend configuration for Terraform state
├── provider.tf          # AWS provider configuration
├── rds.tf               # RDS instance (Multi-AZ)
├── vpc.tf               # VPC and subnet configuration
├── variables.tf         # Input variables
├── terraform.tfvars     # Variable values
├── output.tf            # Outputs for ALB DNS, RDS endpoint, etc.
└── README.md            # Project documentation

````
## 📊 Architecture Diagram

![AWS 3-Tier Architecture](/AWS-3-Tier-Architecture.png)

---

## 🚀 Deployment Instructions

### 1. Prerequisites

- Terraform CLI v1.0+
- AWS CLI configured
- AWS account with sufficient permissions

### 2. Initialize Terraform

```bash
terraform init
````

### 3. Plan Infrastructure

```bash
terraform plan
```

### 4. Apply Changes

```bash
terraform apply
```

---

## 🔒 Security Considerations

* EC2 instances are in **private subnets**
* Only the Load Balancer is exposed publicly
* RDS is not publicly accessible
* All traffic is managed using **security groups** and **network ACLs**

---

## 📤 Outputs

After deployment, Terraform will output:

* ALB DNS Name
* RDS Endpoint
* VPC ID
* Subnet IDs

---

## 📌 Notes

* You can customize the instance types, AMIs, and database engine via `terraform.tfvars`.
* Use Terraform Cloud or a remote backend for managing state in teams.

---

## 📧 Contact

For any issues or suggestions, please contact \[Aalyan Khan] at \[[aalyankhan029@gmail.com](mailto:aalyankhan029@gmail.com)].

```