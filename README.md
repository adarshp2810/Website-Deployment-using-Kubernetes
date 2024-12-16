# Kubernetes Deployment of Static Website

This repository contains a Dockerized static website, which can be deployed on a Kubernetes cluster. Follow the instructions below to get the site up and running on your own Kubernetes environment.

## Prerequisites

- A Kubernetes cluster (Minikube for local development is recommended)
- Docker installed on your machine
- Git installed on your machine
- A web file (e.g., `index.html`, CSS, JS) should be placed in the repository

## Steps to Deploy the Static Website on Kubernetes

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/adarshp2810/adarshp2810.github.io.git
cd adarshp2810.github.io
```

### 2. Dockerize the Static Website

Create a Dockerfile in your repository to containerize the static website using Nginx. The Dockerfile should look like this (take the code from the Dockerfile file in this repository):

### 3. Build the Docker Image

Build the Docker image using the following command:

```bash
docker build -t adarshp2810/static-website:v1 .
```
This will create an image of your static website.

### 4. Start Minikube 

Start a local Kubernetes cluster using Minikube:

```bash
minikube start
```

### 5. Configure Docker to Use Minikube's Docker Daemon

Make sure that your local Docker client points to Minikube's Docker environment to ensure the image is accessible to Kubernetes:

```bash
eval $(minikube -p minikube docker-env)
```

### 6. Rebuild the Docker Image Inside Minikube

Rebuild the Docker image inside Minikube's Docker environment:

```bash
docker build -t adarshp2810/static-website:v1 .
```

### 7. Create Kubernetes Deployment and Service

Create `deployment.yaml` and `service.yaml` files for deploying the static website on Kubernetes.

`deployment.yaml`: Take the code from the `deployment.yaml` file in this repository
`service.yaml`: Take the code from the `service.yaml` file in this repository

### 8. Apply Kubernetes Configuration

Apply the deployment and service YAML files to your Kubernetes cluster:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### 9. Check the Status of Pods and Services

Check the status of your pods and services to ensure everything is running correctly:

```bash
kubectl get pods
kubectl get svc
```

### 10. Access the Website

Once your pods are running, you can access the static website using the Minikube service command:

```bash
minikube service static-website-service
```
This will provide you with a URL where your static website is being served 

### Conclusion

You've successfully containerized and deployed a static website on Kubernetes. This guide assumes you're using Minikube for local development, but the steps can be adapted for other Kubernetes clusters as well.

