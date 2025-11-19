# 🚀 Automated 2-Tier Web Application Deployment on AWS using Terraform

This project demonstrates deploying a **Scalable 2-Tier Web Application** on AWS using **Terraform (Infrastructure as Code)**.  
It follows production-level practices including VPC design, secure networking, separate tiers, and automated provisioning.

---

## 📌 **Project Overview**

This architecture consists of:

- **Web/Application Tier:** EC2 instance inside Public Subnet  
- **Database Tier:** RDS MySQL in Private Subnet  
- **Networking:** Custom VPC with public + private subnets  
- **Security:** Tier-wise Security Groups for isolation  
- **Automation:** Terraform for end-to-end provisioning  

This project shows how real Cloud/DevOps engineers deploy scalable and secure applications.

---

## 🧩 Architecture Overview
![alt text](<2-Tier Architecture.png>)
**Components Used:**
- **VPC** — custom network with public & private subnets  
- **EC2 Instance** — application server (web/app tier)  
- **RDS (MySQL/PostgreSQL)** — database server (database tier)  
- **Security Groups** — tier-wise network isolation  
- **IAM Role** — for instance-level access control  
- **Key Pair** — for secure SSH access  

---

## 🚀 **How It Works**

### **1️⃣ Networking Layer**
- Creates **VPC (10.0.0.0/16)**
- Public & Private subnets
- Internet Gateway & Route Table
- Private DB Subnet Group

### **2️⃣ Security Layer**
- Web SG → Allows HTTP & SSH
- DB SG → Only accepts from EC2 Web SG

### **3️⃣ Web Tier (EC2)**
- EC2 launched in public subnet
- Apache auto-installed via user data
- Public IP for website

### **4️⃣ Database Tier (RDS)**
- RDS MySQL launched inside private subnet
- Not exposed to the internet
- Only EC2 can access DB

---

## ⚙️ **How to Deploy**

### **1. Initialize Terraform**
```bash
terraform init


🧾 Summary

This project demonstrates how to deploy and manage a scalable 2-Tier Web Application on AWS using Terraform.
It follows real-world best practices like Infrastructure as Code (IaC), modular design, and secure network configuration.

🧑‍💻 Author
Osama Faisal
📍 Bangalore, India
💼 Aspiring Cloud & DevOps Engineer
🔗 LinkedIn | GitHub