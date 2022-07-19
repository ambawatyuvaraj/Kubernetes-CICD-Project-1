# DevOps-Project-1
Git,Jenkins,Ansible,Docker,Kubernetes (Deployments & Services)


![Screenshot from 2022-07-18 22-01-25](https://user-images.githubusercontent.com/49603066/179559246-d66cce95-5ffa-455c-898a-6d2cf5754be5.png)

1# Created three servers(EC2 Instances with proper roles and SG) on AWS for Ansible, Jenkins and Kubernetes
2# Installed and configured Jenkins , Ansible and Kubernetes (Used K3s) on respective instances.
3# Created Webhook on Github and configured Jenkins server to run the pipleline as soon as any commit happens on the repo.
4# Pipeline stages defined in Jenkins to get the files from Github to Jenkins workspace first and send them over to Ansible server via ssh (Using SSH Agent)
5# Ansible server to Build the Docker Images and Push them to DockerHUB with proper tags and version control. 
6# Ansible playbook to build and run necessary deployments and services on Kubernetes cluster. 
