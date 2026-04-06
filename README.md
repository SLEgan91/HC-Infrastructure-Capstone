\# HealthConnect Infrastructure Capstone



\## Project Overview



Automated deployment of a secure, 3-tier VPC architecture on Google Cloud Platform using Terraform and Ansible.



\## Technical Features



\- \*\*Logical Isolation:\*\* 3-tier subnets (Public, Private-App, Data-Isolated)

\- \*\*Security:\*\* IAP-based SSH access, OS Login, and Cloud NAT for controlled egress

\- \*\*Infrastructure as Code (IaC):\*\* Terraform-based provisioning

\- \*\*Automation:\*\* Ansible configuration management via WSL



\---



\## Sprint 2 - Security \& Automation



In Sprint 2, the infrastructure was enhanced with secure, identity-based access and automation.



\- \*\*OS Login:\*\* Enabled IAM-based SSH authentication, removing reliance on static SSH keys  

\- \*\*IAP Tunneling:\*\* Secured VM access without exposing public IP addresses  

\- \*\*Zero-Trust Model:\*\* Ensured all access is authenticated and authorized  

\- \*\*Ansible Automation:\*\* Configured the VM using Ansible from a WSL environment  

\- \*\*Validation:\*\* Verified connectivity using Ansible ping (`pong`)  

\- \*\*Idempotency:\*\* Confirmed stable configuration with repeatable playbook execution  



\---



\## Tools \& Technologies



\- Google Cloud Platform (GCP)

\- Terraform

\- Ansible

\- Git \& GitHub

\- Windows Subsystem for Linux (WSL)
  
