# Udacity Cloud DevOps Engineer Capstone Project

In this project, I created a CI/CD pipeline for a basic website that deploys to a cluster in AWS EKS which uses Blue/Green Deployment.

Blue Green Deployment depends on the following concept:

We have two hardware environments that are configured exactly the same way. New code is released to the inactive environment, where it is thoroughly tested. Once the code is okay, the the idle environment is made active by adjusting a router configuration to redirect application program traffic.

I implemented it on AWS Console following the steps in this tutorial:
https://docs.aws.amazon.com/codedeploy/latest/userguide/applications-create-blue-green.html   

The flow works as follows: <br/>
1- Start with already deployed containers (Deployment) and service.<br />
2- Deploy new deployment<br />
3- Issue a health check<br />
4- If health check passes, update load balancer and remove old deployment<br />
5- If health check fails, stop and send Slack alert

Please find attached in the screenshots folder an image for the blue-green deployment.

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

