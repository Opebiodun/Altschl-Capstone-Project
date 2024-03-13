# **Deployment of Socks Shop Microservices-based Applications to Kubernetes using a Jenkins CI/CD Pipeline**

This Repository contains 3 Major Directories to successfully deploy Socks Shop Microservices-based Application.

1. **Terraformcode-to-create-jenkins-server:** This directory contains the codes to create the Jenkins server.
2. **eks-cluster:** This directory contains the Terraform code to create the Kubernetes cluster where the application will be deployed using a Jenkins pipeline.
3. **Kubernetes:** This directory contains the sub-directories, files, and codes to deploy the application on Kubernetes using a Jenkins pipeline.

We are going to be deploying 10 services — carts, catalogue, frontend, orders, payment, queue-master, rabbitmq, session-db, shipping, and user. These 10 services are what make up the Sock-shop microservice.

### Prerequisites

- AWS Account
- A cluster running
- An Ubuntu machine
- Terraform installed
- Kubectl installed
- AWS CLI installed
- Good Internet
- Github Repository where the codes will be stored and attached to the Jenkins server pipeline configuration in order to run the codes from the repository for the creation of EKS cluster and deployment on Kubernetes.
- Grafana to collect, correlate, visualize, monitor, and analyze data

## **Architecture diagram**

               +-------------------------+
               |                         |
               |     GitHub Repository   |
               |                         |
               +------------+------------+
                            |
                            | git push
                            v
            +-----------------------------------+
            | Jenkins CI/CD Pipeline           |
            |                                   |
            |   +-------------+                 |
            |   | eks-cluster |                 |
            |   | Kubernetes  |                 |
            |   | Terraform   |                 |
            |   |             |                 |
            +---+-------------+-----------------+
                |                               |
                |                               |
                |         +--------------+       |
                |         |              |       |
                +---------> AWS Account  +-------+
                          |              |
                          +--------------+
                          
This diagram illustrates the flow of the project, starting from the GitHub repository where the project code resides. When changes are pushed to the repository, the Jenkins CI/CD pipeline is triggered. The pipeline consists of multiple stages:

eks-cluster: This stage involves creating the Kubernetes cluster on AWS using Terraform. It sets up the necessary infrastructure for the microservices-based application deployment.

Kubernetes: In this stage, the Kubernetes manifests are applied to the cluster to deploy the microservices-based application. This includes deploying individual services like carts, catalogue, frontend, etc.

The Jenkins pipeline orchestrates the entire deployment process, ensuring automation, consistency, and reliability.                          

The codes for the installation of the cluster have been provided in the **EKS-CLUSTER** directory mentioned above, while the installation of other prerequisites can be found on the internet using Google.com as a research tool.


## Steps for the Project

1. Create a Keypair on AWS account that matches your code keypair.
2. Create a Jenkins Server with all the dependencies, libraries, and packages needed (check or use -Terraformcode-to-create-jenkins-server- directory for the codes or create your own code).

   To run the Terraform files use the command below:
   ```bash
   $ terraform init
   $ terraform --auto-approve

3. Once completed, access the Jenkins server on your browser and Set it up (follow the prompt/instruction display on the browser screen to setup the Jenkins server)
4. Run the eks-cluster directory on jenkins through "Jenkinsfile-cluster"to create Kubernetes Cluster
5. Run the kubernetes directory on jenkins through "Jenkinsfile" file to create deployment on Kubernetes
6. Test that the Socks Shop Microservices-based Applications and grafana are running and active 

    To run the Terraform files use the command below:
   ```bash
   $ kubectl get svc -n sock-shop
   $ kubectl get svc -n prometheus (Grafana)

OR use Route 53 on AWS with an active DNS as stated/used in the Kubernetes directory.

7. Destroy infrastructure.






