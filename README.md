# Conduit AWS Infrastructure

Production-ready deployment of the Conduit application on AWS using Terraform, Ansible, Docker, GitHub Actions and CloudWatch.

---

## Overview

This project demonstrates a complete DevOps workflow for deploying and operating a containerized web application on AWS.

The infrastructure is provisioned with Terraform, configured with Ansible and automatically deployed through GitHub Actions. The application is served securely via NGINX using Let's Encrypt certificates and monitored with AWS CloudWatch.

---

## Features

- AWS EC2 Infrastructure
- Infrastructure as Code with Terraform
- Server Configuration with Ansible
- Docker & Docker Compose Deployment
- GitHub Actions CI/CD Pipeline
- GitHub Container Registry (GHCR)
- NGINX Reverse Proxy
- HTTPS with Let's Encrypt
- AWS CloudWatch Monitoring
- Security Scanning
  - Trivy
  - Hadolint
  - Gitleaks

---

# Architecture

```text
                GitHub
                   │
                   │ Push
                   ▼
          GitHub Actions CI/CD
                   │
     ┌─────────────┴─────────────┐
     │                           │
 Build Docker Images      Security Scans
     │                           │
     └─────────────┬─────────────┘
                   │
                   ▼
 GitHub Container Registry (GHCR)
                   │
                   ▼
             AWS EC2 Instance
                   │
        ┌──────────┴──────────┐
        │                     │
     Docker Compose        NGINX
        │                     │
        └──────────┬──────────┘
                   │
             HTTPS (Let's Encrypt)
                   │
                   ▼
                Internet

                   │
                   ▼
          AWS CloudWatch Monitoring
```

---

# Tech Stack

| Category | Technologies |
|----------|--------------|
| Cloud | AWS EC2 |
| Infrastructure | Terraform |
| Configuration | Ansible |
| Containers | Docker, Docker Compose |
| CI/CD | GitHub Actions |
| Registry | GitHub Container Registry |
| Reverse Proxy | NGINX |
| TLS | Let's Encrypt |
| Monitoring | AWS CloudWatch |
| Operating System | Ubuntu 24.04 LTS |

---

# Infrastructure

The infrastructure is provisioned using Terraform and includes:

- Virtual Private Cloud (VPC)
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- IAM Role
- IAM Instance Profile

---

# Configuration Management

Server configuration is fully automated with Ansible.

Configured components include:

- Docker
- Docker Compose
- NGINX
- Let's Encrypt
- CloudWatch Agent
- Application deployment
- Reverse proxy configuration

---

# CI/CD Pipeline

The deployment workflow consists of the following stages:

1. Push to GitHub
2. GitHub Actions starts automatically
3. Security Scans
   - Gitleaks
   - Hadolint
   - Trivy
4. Docker Images are built
5. Images are pushed to GitHub Container Registry
6. Ansible connects to the EC2 instance
7. Docker Compose pulls the latest images
8. Containers are restarted
9. Application is available immediately

---

# Monitoring

The infrastructure is monitored using AWS CloudWatch.

Monitored metrics include:

- CPU Utilization
- Memory Usage
- Disk Usage
- Network Traffic

---

# Security

Implemented security measures include:

- IAM Roles
- Security Groups
- HTTPS (Let's Encrypt)
- SSH Key Authentication
- GitHub Secrets
- Container Security Scanning
- Secret Detection
- Dockerfile Linting

---

# Project Structure

```text
conduit-aws/
│
├── terraform/
│   ├── provider.tf
│   ├── ec2.tf
│   ├── vpc.tf
│   ├── iam.tf
│   └── ...
│
├── ansible/
│   ├── inventory/
│   ├── roles/
│   │
│   ├── docker/
│   ├── nginx/
│   ├── compose/
│   ├── certbot/
│   └── cloudwatch/
│
├── .github/
│   └── workflows/
│
└── README.md
```

---

# Deployment

Provision infrastructure

```bash
cd terraform

terraform init
terraform plan
terraform apply
```

Configure the server

```bash
cd ansible

ansible-playbook playbook.yml
```

Deploy new application version

```bash
git push
```

Deployment is handled automatically by GitHub Actions.

---

# Screenshots

## AWS Infrastructure

> Screenshot

---

## GitHub Actions Pipeline

> Screenshot

---

## CloudWatch Dashboard

> Screenshot

---

## HTTPS Deployment

> Screenshot

---

## Running Containers

```bash
docker ps
```

---

# Future Improvements

Possible future enhancements:

- Application Load Balancer
- Auto Scaling Group
- CloudWatch Alarms
- SNS Notifications
- Multi Environment (dev/prod)
- Blue/Green Deployment
- ECS/Fargate Deployment

---

# Learning Goals

This project demonstrates practical experience with:

- Infrastructure as Code
- Configuration Management
- Linux Administration
- Containerization
- CI/CD Automation
- Cloud Infrastructure
- Monitoring
- Secure Application Deployment

---

# License

MIT License