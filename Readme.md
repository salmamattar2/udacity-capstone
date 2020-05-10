# Project 5 - Cloud DevOps Engineer Capstone Project

> In this project, I created a CI/CD pipeline for a basic website that deploys to a cluster in AWS EKS which is Blue/Green Deployment.

Pleas note that the kubernetes cluster was created using EKSCTL not through cloudformation or ansible 

You can find the used eksctl commands for this task in the file 'kubernetes-cluster-creation.sh'

> To be able to use this CI/CD pipeline you will need to install:

* Jenkins
* Blue Ocean Plugin in Jenkins
* Pipeline-AWS Plugin in Jenkins
* Docker
* Pip
* AWS Cli
* Eksctl
* Kubectl



## The files included are:
```sh
* /Images-of-result-deploy : Screenshot the result of deploy.
* /Create-clusters-pipeline : CloudFormation Script of Cluster Pipeline file 
* /Deploy-containers-pipeline : Deployment Script of Containers Pipeline file
* Jenkinsfile : Jenkinsfile for Creating Pipeline
* Dockerfile : Dockerfile for building the image 
* green-controller.json : Create a replication controller green pod
* green-service.json : Create the green service
* blue-controller.json : Create a replication controller blue pod
* blue-service.json : Create the blue service
* index.html : Web site Index file.
```

## Run the project:
```sh
* Please follow to steps of screenshot in Images-of-result-deploy folder.
```
