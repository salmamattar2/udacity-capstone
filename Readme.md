# Udacity Cloud DevOps Engineer Capstone Project

In this project, I created a CI/CD pipeline for a basic website that deploys to a cluster in AWS EKS which uses Blue/Green Deployment.

Blue Green Deployment depends on the following concept:

We have two hardware environments that are configured exactly the same way. New code is released to the inactive environment, where it is thoroughly tested. Once the code is okay, the the idle environment is made active by adjusting a router configuration to redirect application program traffic.


To be able to use the CI/CD pipeline you will need to install:

* Jenkins
* Blue Ocean Plugin in Jenkins
* Pipeline-AWS Plugin in Jenkins
* Docker
* Pip
* AWS Cli
* Eksctl
* Kubectl

After the installation of the items above on an EC2 instance you'll need to setup the pipeline in this githubrepo. All required stages are in the JenkinsFile.

IMPORTANT NOTE TO REVIEWER: 
Please note that the kubernetes cluster was created using EKSCTL not through cloudformation or ansible.
You can find the used eksctl commands for this task in the file 'kubernetes-cluster-creation.sh'

