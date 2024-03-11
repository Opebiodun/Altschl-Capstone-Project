# Project Overview

## Objective

Deploy a microservices-based application, specifically the Socks Shop, using a modern approach that emphasizes automation and efficiency. The goal is to use Infrastructure as Code (IaaC) for rapid and reliable deployment on Kubernetes.

## Setup Details Explained

### What You'll Do

Your main task is to set up the Socks Shop application, a demonstration of a microservices architecture, available on [GitHub](https://github.com/microservices-demo/microservices-demo.github.io). You'll be using tools and technologies that automate the setup process, ensuring that the application can be deployed quickly and consistently.

### Resources

- [Socks Shop Microservices Demo](https://github.com/microservices-demo/microservices-demo.github.io)
- [Detailed Implementation Guide](https://github.com/microservices-demo/microservices-demo/tree/master)

## Task Instructions

1. **Use Infrastructure as Code:** Automate the deployment process. This means all the steps to get the application running on Kubernetes should be scripted and easily executable.
   
2. **Focus on Clarity and Maintenance:** Your deployment scripts and configurations should be easy to understand and maintain. Think of someone else (or yourself in the future) needing to update or replicate your setup.

## Key Evaluation Criteria

- **Deployment Pipeline:** How the application moves from code to a running environment.
- **Monitoring and Alerts:** Implement Prometheus for monitoring and set up Alertmanager for alerts.
- **Logging:** Ensure the application's operations can be tracked and analyzed through logs.
- **Tools for Setup:** Use either Ansible or Terraform for managing configurations. Choose an Infrastructure as a Service (IaaS) provider where your Kubernetes cluster will live.
- **Security and HTTPS:** Make sure the application is accessible over HTTPS by using Let’s Encrypt for certificates. Consider implementing network security measures and use Ansible Vault for handling sensitive information securely.

## Extra Project Requirements for Bonus Points

- **HTTPS Requirement:** The application must be securely accessible over HTTPS.
- **Infrastructure Security:** Enhance security by setting up network perimeter security rules.
- **Sensitive Information:** Use Ansible Vault to encrypt sensitive data, adding an extra layer of security.

## Project Goals Summarized

This project is about deploying a microservices-based application using automated tools to ensure quick, reliable, and secure deployment on Kubernetes. By focusing on Infrastructure as Code, you'll create a reproducible and maintainable deployment process that leverages modern DevOps practices and tools.

# Solution

**Socks Shop Microservices-based Applications to Kubernetes using a Jenkins CI/CD Pipeline**

This Repository contains 3 Major Directories to successfully deploy Socks Shop Microservices-based Application.

1. **eks-cluster:** This directory contains the Terraform code to create the Kubernetes cluster where the application will be deployed using a Jenkins pipeline.
2. **Kubernetes:** This directory contains the sub-directories, files, and codes to deploy the application on Kubernetes using a Jenkins pipeline.
3. **Terraformcode-to-create-jenkins-server:** This directory contains the codes to create the Jenkins server.

We are going to be deploying 10 services — carts, catalogue, frontend, orders, payment, queue-master, rabbitmq, session-db, shipping, and user. These 10 services are what make up the Sock-shop microservice.

### Prerequisites

- AWS Account
- A cluster running
- An Ubuntu machine
- Terraform installed
- Kubectl installed
- AWS CLI installed
- Good Internet
- GitHub Repo where the codes will be stored and attached to the Jenkins sever in order to run the codes from the repo for the creation of EKS cluster and deployment of the application.
- Grafana to collect, correlate, visualize, monitor, and analyze data

The codes for the installation of the cluster have been provided in the **EKS-CLUSTER** directory mentioned above, while the installation of other prerequisites can be found on the internet using Google.com as a research tool.

## Steps for the Project

1. Create a Keypair on AWS account that matches your code keypair.
2. Create a Jenkins Server with all the dependencies, libraries, and packages needed (check or use -Terraformcode-to-create-jenkins-server- directory for the codes or create your own code).

   To run the Terraform files use the command below:
   ```bash
   $ terraform init
   $ terraform --auto-approve

3. Once completed, access the Jenkins server and Set it up
4. Run the eks-cluster directory on jenkins to create Kubernetes Cluster
5. Run the kubernetes directory on jenkins to create deployments and Services
6. Test that the Socks Shop Microservices-based Applications and grafana is running 

bash
Copy code
$ kubectl get svc -n sock-shop
$ kubectl get svc -n prometheus (Grafana)
OR use Route 53 on AWS with an active DNS as stated in the Kubernetes directory.

7. Destroy infrastructure.




Project Overview:

Objective: Deploy a microservices-based application, specifically the Socks Shop, using a modern approach that emphasizes automation and efficiency. The goal is to use Infrastructure as Code (IaaC) for rapid and reliable deployment on Kubernetes.

Setup Details Explained:
What You'll Do: Your main task is to set up the Socks Shop application, a demonstration of a microservices architecture, available on GitHub. You'll be using tools and technologies that automate the setup process, ensuring that the application can be deployed quickly and consistently.

Resources:
Socks Shop Microservices Demo: https://github.com/microservices-demo/microservices-demo.github.io

Detailed Implementation Guide: https://github.com/microservices-demo/microservices-demo/tree/master

Task Instructions:
Use Infrastructure as Code: Automate the deployment process. This means all the steps to get the application running on Kubernetes should be scripted and easily executable.
Focus on Clarity and Maintenance: Your deployment scripts and configurations should be easy to understand and maintain. Think of someone else (or yourself in the future) needing to update or replicate your setup.

Key Evaluation Criteria:
Deployment Pipeline: How the application moves from code to a running environment.
Monitoring and Alerts: Implement Prometheus for monitoring and set up Alertmanager for alerts.

Logging: Ensure the application's operations can be tracked and analyzed through logs.
Tools for Setup: Use either Ansible or Terraform for managing configurations. Choose an Infrastructure as a Service (IaaS) provider where your Kubernetes cluster will live.

Security and HTTPS: Make sure the application is accessible over HTTPS by using Let’s Encrypt for certificates. Consider implementing network security measures and use Ansible Vault for handling sensitive information securely.

Extra Project Requirements for Bonus Points:
HTTPS Requirement: The application must be securely accessible over HTTPS.
Infrastructure Security: Enhance security by setting up network perimeter security rules.
Sensitive Information: Use Ansible Vault to encrypt sensitive data, adding an extra layer of security.

Project Goals Summarized:
This project is about deploying a microservices-based application using automated tools to ensure quick, reliable, and secure deployment on Kubernetes. By focusing on Infrastructure as Code, you'll create a reproducible and maintainable deployment process that leverages modern DevOps practices and tools.

Solution

Socks Shop Microservices-based Applications to Kubernetes using a Jenkins CI/CD Pipeline

This Repository contains 3 Major Directories to succceddfully deploy Socks Shop Microservices-based Applicatiom.

1. eks-cluster (This directory comtains the terraform code to create the Kubenetes cluster where the application will be deployed using jenkins pipeline)
2. Kubernetes (This directory contains the sub-directories files and codes to deploy the application on kubernetes using jenkins pipeline )
3. Terraformcode-to-create-jenkins-server (This diretcory contains the codes to create jenkins server)

we are going to be deploying 10 services — carts, catalogue, frontend, orders, payment, queue-master, rabbitmq, session-db, shipping, and user

these 10 services are what make up the sock-shop microservice.

prerequisite:

- AWS Account
- A cluster running
- An Ubuntu machine
- Terraform installed
- Kubectl installed
- AWS CLI installed
- Good Internet 
- Github Repo where the codes will be stored and attached to the jenkins sever in other run the codes from the repo for the creation of eks cluster and deployment of the application
- Grafana to collect, correlate, visualize monitor, and analyze data

The codes for the installation of cluster has been provided in EKS-CLUSTER directory mentioned above while the installation of other prerequistes can be found on internet using google.com as a research tool. 

Steps for the project

1. Create a Keypair on aws account that matches your code keypair 
2. Create a Jenkins Server with all the dependencies, libraries and packagies needed (check or use -Terraformcode-to-create-jenkins-server- directory for the codes or create your own code )

To run the terraform files use the command below:
$ terraform init
$ terraform --auto-approve

3. Once completed, access the Jenkins server and Set it up
4. Run the eks-cluster directory on jenkins to create Kubernetes Cluster
5. Run the kubernetes directory on jenkins to create deployments and Services
6. Test that the Socks Shop Microservices-based Applications and grafana is running 

To check if the sock shop has been deployed you can use this command:
$ kubectl get svc -n sock-shop
$ kubectl get svc -n prometheus (Grafana)

#OR  
Use Route 53 on AWS with an active DNS has stated in kubenetes diretory 

7. Destroy infrastructure

