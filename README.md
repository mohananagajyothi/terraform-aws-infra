# 🌩️ Terraform AWS Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-v1.9+-623CE4?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws&logoColor=white)
![Infrastructure as Code](https://img.shields.io/badge/IaC-Automation-blue)
![License](https://img.shields.io/badge/License-MIT-green)

This project automates the creation of a complete **AWS infrastructure** using **Terraform modules**.  
It provisions a **VPC**, **Security Group**, **EC2 instance**, and **S3 bucket** — all following a clean, modular, and reusable design.

---

## 🏗️ Infrastructure Overview

- **VPC** with CIDR `10.0.0.0/16`  
- **Public Subnets** and **Internet Gateway**  
- **Security Group** allowing SSH (22) & HTTP (80)  
- **EC2 Instance** running *Amazon Linux 2*  
- **S3 Bucket** for object storage  
- Modular, reusable Terraform structure  

---

## 📂 Project Structure

```

terraform-aws-infra/
│
├── main.tf                   # Root module — calls all submodules
├── variables.tf              # Root-level input variables
├── outputs.tf                # Root-level outputs
├── provider.tf               # AWS provider configuration
├── terraform.tfvars          # Variable values (region, key, etc.)
├── terraform.tfvars.example  # Example variable file (for reference)
├── .gitignore                # Ignore sensitive/state files
├── README.md                 # Project documentation
│
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    ├── security/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    ├── ec2/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── s3/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf

````

---

## ⚙️ How to Use

### 1️⃣ Prerequisites

Before running Terraform, ensure you have:
- An **AWS account** and configured **Access Keys**
- **Terraform** installed → `terraform -v`
- An existing **AWS Key Pair** (e.g., `my-keypair`)

---

### 2️⃣ Configure Variables

Update the `terraform.tfvars` file with your values:


- region        = "ap-south-1"
- key_name      = "my-keypair"
- ami_id        = "ami-0f5ee92e2d63afc18"
- instance_type = "t2.micro"

---

### 3️⃣ Initialize & Deploy

- terraform init
- terraform fmt -recursive
- terraform validate
- terraform plan
- terraform apply -auto-approve

---

### 4️⃣ Verify Resources

After deployment, verify your AWS resources:

Visit AWS Console → VPC, EC2, S3

Copy the EC2 Public IP and connect via SSH:

ssh -i "my-keypair.pem" ec2-user@<public_ip>

---

### 5️⃣ Destroy Infrastructure

terraform destroy -auto-approve

🧠 Key Concepts Covered

- Terraform Modules

- Provider Configuration

- Variables & Outputs

- Infrastructure Provisioning & Cleanup

- Reusable Modular Design

---

🧩 Example Output

Example terminal output after applying:

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

- public_ip = "13.232.45.122"
- vpc_id    = "vpc-0f3930a5874e24e9d"
- bucket_id = "terraform-aws-infra-us-b8c7b7fa"

---

👩‍💻 Author

Mohana Naga Jyothi
🌍 DevOps Engineer — Terraform • AWS • CI/CD
📅 October 2025

💡 “Infrastructure as Code isn’t just automation — it’s confidence in every deploy.”

---

