# Dockerized Node.js CI/CD Pipeline with GitHub Actions, Docker Hub & AWS EC2

![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-blue?logo=githubactions)
![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker)
![AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazonaws)
![Node.js](https://img.shields.io/badge/Node.js-22-green?logo=node.js)

## Project Overview

This project demonstrates a complete **CI/CD pipeline** for a Dockerized Node.js application.

Whenever code is pushed to the **main** branch:

- GitHub Actions automatically builds the Docker image.
- The image is pushed to Docker Hub.
- GitHub Actions connects securely to an AWS EC2 instance via SSH.
- The latest Docker image is pulled.
- The existing container is stopped and removed.
- A new container is launched automatically.

This project showcases practical DevOps skills including:

- Docker
- GitHub Actions
- Docker Hub
- AWS EC2
- Linux
- SSH Automation
- Continuous Integration
- Continuous Deployment

---

# Architecture

```
Developer
     │
     ▼
GitHub Repository
     │
     ▼
GitHub Actions
     │
     ├──────── Build Docker Image
     │
     ├──────── Push to Docker Hub
     │
     ▼
AWS EC2 (Ubuntu)
     │
     ▼
Docker Container
     │
     ▼
Node.js Application
```

---

# Technologies Used

- Node.js
- Express.js
- Docker
- Docker Hub
- GitHub Actions
- AWS EC2
- Ubuntu Linux
- Git
- SSH

---

# Project Structure

```
docker-nodejs-cicd
│
├── .github
│   └── workflows
│       └── deploy.yml
│
├── app
│   ├── public
│   │   ├── index.html
│   │   ├── styles.css
│   │   └── script.js
│   │
│   ├── package.json
│   └── server.js
│
├── screenshots
│   ├── browser showing app.jpg
│   ├── docker ps.jpg
│   ├── docker images.jpg
│   ├── docker repository.jpg
│   ├── EC2.jpg
│   └── ssh terminal.jpg
│
├── Dockerfile
├── .dockerignore
├── .gitignore
└── README.md
```

---

# CI/CD Workflow

The deployment process is fully automated.

1. Developer pushes code to GitHub.
2. GitHub Actions starts automatically.
3. Docker image is built.
4. Docker image is pushed to Docker Hub.
5. GitHub Actions connects to EC2 through SSH.
6. Existing container is stopped.
7. Latest Docker image is pulled.
8. New container is deployed.

---

# Docker Commands Used

Build image

```bash
docker build -t docker-nodejs-app .
```

Run container

```bash
docker run -d -p 3000:3000 --name node-app docker-nodejs-app
```

List running containers

```bash
docker ps
```

List Docker images

```bash
docker images
```

---

# GitHub Secrets

The following repository secrets were configured:

| Secret | Purpose |
|----------|----------|
| DOCKER_USERNAME | Docker Hub Username |
| DOCKER_PASSWORD | Docker Hub Access Token |
| EC2_HOST | Public IP of EC2 |
| EC2_USERNAME | Ubuntu |
| EC2_SSH_KEY | Private SSH Key |

---

# Docker Hub Repository

Docker images are automatically pushed to:

**https://hub.docker.com/r/tevinportfolio/docker-nodejs-app**

---

# AWS Deployment

Application deployed on:

- AWS EC2
- Ubuntu 24.04
- Docker Engine
- Port 3000

Example:

```
http://51.20.127.71:3000

---

# Screenshots

## Application Running

![Application](screenshots/browser%20showing%20app.jpg)

---

## Docker Container

![Docker Running](screenshots/docker%20ps.jpg)

---

## Docker Images

![Docker Images](screenshots/docker%20images.jpg)

---

## Docker Hub Repository

![Docker Hub](screenshots/docker%20repository.jpg)

---

## EC2 Instance

![EC2](screenshots/EC2.jpg)

---

## SSH Connection

![SSH](screenshots/ssh%20terminal.jpg)

---

# Future Improvements

- HTTPS using Nginx
- Custom Domain
- AWS Application Load Balancer
- Auto Scaling
- Amazon ECR
- Kubernetes (EKS)
- Terraform Infrastructure as Code
- Monitoring with CloudWatch
- Blue/Green Deployment

---

# Author

**Tevin Omondi**

GitHub

https://github.com/tevinomondifreelance-design

LinkedIn

https://www.linkedin.com/in/tevin-omondi-131141355/

Docker Hub

https://hub.docker.com/u/tevinportfolio

---

# License

This project is licensed under the MIT License.
