# 🌩️ Terraform AWS Infrastructure

This project automates the creation of a complete AWS infrastructure using **Terraform modules**.  
It builds a **VPC**, **security group**, **EC2 instance**, and an **S3 bucket** in a clean, modular, reusable way.

---

## 🏗️ Infrastructure Overview

- **VPC** with `10.0.0.0/16`
- **Public subnets** and Internet Gateway
- **Security group** for SSH (22) and HTTP (80)
- **EC2 instance** running Amazon Linux 2
- **S3 bucket** for object storage
- Modular and reusable structure

---

## 📂 Project Structure

terraform-aws-infra/
│
├── main.tf # Root module — calls submodules
├── variables.tf # Root input variables
├── outputs.tf # Root outputs
├── provider.tf # AWS provider configuration
├── terraform.tfvars # Actual values (region, key, etc.)
├── terraform.tfvars.example # Example variable file (for reference)
├── .gitignore # Ignore sensitive and Terraform state files
├── README.md # Project documentation
│
└── modules/
├── vpc/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
├── security/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
├── ec2/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
└── s3/
├── main.tf
├── variables.tf
└── outputs.tf


---

## ⚙️ How to Use

### 1️⃣ Prerequisites
- AWS account & access keys configured  
- Terraform installed (`terraform -v`)  
- An existing AWS **Key Pair** (example: `my-keypair`)

---

### 2️⃣ Configure Variables

Edit your `terraform.tfvars` file:

```hcl
region         = "ap-south-1"
key_name       = "my-keypair"
ami_id         = "ami-0f5ee92e2d63afc18"
instance_type  = "t2.micro"

3️⃣ Initialize & Deploy

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply -auto-approve


4️⃣ Verify Resources

Check AWS Console → VPC, EC2, S3

Copy the EC2 public IP and SSH into it:

ssh -i "my-keypair.pem" ec2-user@<public_ip>


5️⃣ Destroy Infrastructure

terraform destroy -auto-approve


🧠 Key Concepts Covered

Terraform Modules

Provider configuration

Variables & Outputs

Infrastructure provisioning & cleanup

Reusable, modular design


🧩 Example Output

After applying, you’ll see:

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

public_ip = "13.232.45.122"
vpc_id    = "vpc-0f3930a5874e24e9d"
bucket_id = "terraform-aws-infra-us-b8c7b7fa"

👩‍💻 Author

MOHANA NAGA JYOTHI
🌍 DevOps Engineer | Terraform • AWS • CI/CD
📅 October 2025
💡 "Infrastructure as Code isn’t just automation — it’s confidence in every deploy."