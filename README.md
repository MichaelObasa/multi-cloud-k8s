# Multi-Cloud Kubernetes Project

This project provisions Kubernetes clusters on **both AWS (EKS)** and **Azure (AKS)** using **Terraform**, deploys a sample containerized web application with **Docker**, and uses **GitHub Actions** for CI/CD. It also includes **monitoring with Prometheus and Grafana**.

---

## 🔧 Tools I Used
- Terraform (Infrastructure as Code)
- AWS EKS & Azure AKS
- Docker & Kubernetes
- GitHub Actions (CI/CD)
- Prometheus + Grafana (Monitoring)

---

## 🌐 Live Demo Website Link
Deployed app (Azure AKS LoadBalancer IP):  
**http://4.156.48.22**

---

## 🗂️ Folder Structure
├── aws-eks/ # Terraform files for AWS EKS ├── azure-aks/ # Terraform files for Azure AKS ├── docker-app/ # Dockerfile, K8s manifests └── README.md

---

## 🚀 Deployment Steps

### 1. Provision EKS and AKS

'''bash
cd aws-eks
terraform init && terraform apply

cd ../azure-aks
terraform init && terraform apply

---

### 2. Build & Push Docker Image 

cd ../docker-app
docker build -t michael2282/azure-app:v1 .
docker push michael2282/azure-app:v1

---

### 3. Deploy to AKS

az aks get-credentials --resource-group azure-k8s-rg --name azure-aks-cluster
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

---
