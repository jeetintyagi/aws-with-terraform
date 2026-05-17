# ☁️ AWS with Terraform — Piyush Sachdeva (YouTube)

> Hands-on Terraform scripts built while following the **[AWS with Terraform](https://www.youtube.com/c/PiyushSachdeva)** course by **Piyush Sachdeva** on YouTube.  
> Each day's work is organised into its own directory with isolated Terraform configurations.

---

## 📁 Repository Structure

```
aws-with-terraform/lessons
├── day01/          # Terraform basics — providers, init, plan, apply
├── day02/          # AWS provider setup, first EC2 instance
├── day03/          # Variables, outputs, and terraform.tfvars
├── day04/          # Modules and reusable configurations
└── ...             # More days coming
```

---

## 🛠️ Prerequisites

Make sure you have the following installed and configured before running any scripts:

| Tool | Version | Purpose |
|---|---|---|
| [Terraform](https://developer.hashicorp.com/terraform/install) | >= 1.5.x | IaC engine |
| [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) | >= 2.x | AWS authentication |
| [Git](https://git-scm.com/) | Latest | Version control |

### AWS CLI Configuration

```bash
aws configure
# AWS Access Key ID:     <your-access-key>
# AWS Secret Access Key: <your-secret-key>
# Default region name:   ap-south-1       # or your preferred region
# Default output format: json
```

---

## 🚀 How to Use

Each `dayXX/` directory is a standalone Terraform project. Navigate into any day's folder and run the standard Terraform workflow:

```bash
cd day01/

# 1. Initialise — downloads providers & modules
terraform init

# 2. Validate — checks syntax and config
terraform validate

# 3. Plan — previews what will be created/changed/destroyed
terraform plan

# 4. Apply — provisions the infrastructure on AWS
terraform apply

# 5. Destroy — tears down all resources when done
terraform destroy
```

---

## 📅 Day-wise Progress

| Day | Topic | Status |
|-----|-------|--------|
| Day 01 | Terraform Basics — init, plan, apply, destroy | ✅ Done |
| Day 02 | AWS Provider — First EC2 Instance | ✅ Done |
| Day 03 | Variables, Outputs & tfvars | ✅ Done |
| Day 04 | Modules & Reusable Configurations | ✅ Done |
| Day 05 | _Coming soon_ | 🔄 In Progress |

---

## ⚠️ Important Notes

- **Never commit** `.tfstate`, `.tfvars`, or AWS credentials to version control. The `.gitignore` in this repo handles this.
- All resources provisioned will **incur AWS charges** — always run `terraform destroy` after experimenting.
- Each day's directory may have a local `README.md` with day-specific notes.

---

## 📚 Course Reference

- **Instructor:** Piyush Sachdeva
- **Platform:** YouTube
- **Playlist:** [AWS with Terraform – Full Course](https://www.youtube.com/@PiyushSachdeva)

---

## 📜 License

This repository contains personal learning scripts based on a public course. No proprietary content is included.  
Free to use for learning purposes.

---

> _"Infrastructure as Code — because clicking in the console doesn't scale."_
