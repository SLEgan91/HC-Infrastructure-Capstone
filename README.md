# HealthConnect Infrastructure Capstone

## Project Overview

This project demonstrates the automated deployment of a secure, multi-tier cloud architecture on Google Cloud Platform (GCP) using Terraform and Ansible. The design follows industry best practices for network segmentation, zero-trust access, and infrastructure automation.

---

## Technical Features

- **Logical Isolation:** Three-tier VPC architecture (Public, Private-App, Data-Isolated)
- **Secure Access:** Identity-based SSH using OS Login and IAP tunneling (no public IP exposure)
- **Controlled Egress:** Cloud NAT for secure outbound connectivity
- **Infrastructure as Code (IaC):** Fully provisioned using Terraform
- **Automation:** System configuration and deployment managed with Ansible (WSL)

---

## Sprint 2 – Security & Automation

Sprint 2 focused on strengthening access controls and introducing automation.

- **OS Login:** Implemented IAM-based authentication for secure VM access  
- **IAP Tunneling:** Enabled SSH access without exposing external IP addresses  
- **Zero-Trust Access:** Enforced authentication and authorization for all connections  
- **Ansible Automation:** Configured infrastructure using repeatable playbooks  
- **Validation:** Verified connectivity using Ansible ping (`pong`)  
- **Idempotency:** Ensured consistent results across multiple playbook executions  

---

## Sprint 3 – Data Isolation & RBAC Hardening

Sprint 3 introduced a dedicated data tier and enforced multi-layer security aligned with the Principle of Least Privilege (PoLP).

- **Network Isolation:** Deployed a data-isolated subnet with no public access  
- **Firewall Enforcement:** Restricted database access to only the App Tier on port 5432  
- **Host-Based Security:** Configured PostgreSQL `pg_hba.conf` to allow only internal App subnet traffic (10.0.2.0/24)  
- **Database RBAC:** Created a restricted user (`hc_admin`) with SELECT and INSERT permissions only  
- **Automation:** Used Ansible to install PostgreSQL, configure access, and initialize the database  
- **Validation:** Confirmed secure connectivity using `nc` and verified data access via SQL queries  

---

## Tools & Technologies

- Google Cloud Platform (GCP)
- Terraform
- Ansible
- Git & GitHub
- Windows Subsystem for Linux (WSL)