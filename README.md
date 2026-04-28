# HealthConnect Infrastructure Capstone

## Project Overview

This project demonstrates the automated deployment of a secure, multi-tier cloud architecture on Google Cloud Platform (GCP) using Terraform and Ansible. The design follows industry best practices for network segmentation, zero-trust access, high availability, and infrastructure automation.

---

## Architecture Overview

The system is built using a **three-tier architecture**:

- **Public Tier:** Global HTTP Load Balancer providing a single external entry point  
- **Application Tier:** Multiple web servers running NGINX and Python (fcgiwrap)  
- **Data Tier:** Isolated PostgreSQL database with restricted access  

This design ensures scalability, security, and fault tolerance.

---

## Technical Features

- **Logical Isolation:** Three-tier VPC architecture (Public, Private-App, Data-Isolated)  
- **Secure Access:** Identity-based SSH using OS Login and IAP tunneling (no public IP exposure)  
- **Controlled Egress:** Cloud NAT for secure outbound connectivity  
- **Infrastructure as Code (IaC):** Fully provisioned using Terraform  
- **Automation:** System configuration and deployment managed with Ansible (WSL)  
- **High Availability:** Load-balanced web tier with multiple backend instances  
- **Observability:** Logging and monitoring using GCP Logs Explorer  

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

## Sprint 4 – High Availability & Load Balancing

Sprint 4 focused on improving system reliability, scalability, and observability.

- **Load Balancer:** Configured a global external HTTP load balancer to distribute traffic across multiple web servers  
- **High Availability:** Deployed multiple web VMs (hc-test-vm, hc-web-2) behind the load balancer  
- **Health Checks:** Implemented HTTP health checks to monitor backend instance health  
- **Backend Service:** Connected unmanaged instance group (hc-web-group) to the load balancer  
- **Frontend IP:** Exposed the application through a static external IP address  
- **NGINX Configuration:** Configured web servers to serve application traffic and handle Python (fcgiwrap) requests  
- **Database Integration:** Verified end-to-end connectivity between web tier and PostgreSQL database  
- **Failure Testing:** Simulated database failure to validate error handling and system resilience  
- **Observability:** Used GCP Logs Explorer to identify and verify DB_ERROR events  

---

## How to Deploy

1. Provision infrastructure with Terraform:

```bash
terraform apply