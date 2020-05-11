pipeline {
	agent any
	stages {
		stage('Lint HTML') {
			steps {
				echo 'hello'
			/*	sh 'tidy -q -e *.html'*/
			}
		}
	
/*
		stage('Build and Push Docker Image') {
			
			steps {
			withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId:'dockerhub-credentials',usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']])
			{
					sh '''
						docker build --tag=salmamattar/udacity-capstone .
						docker login --username $USERNAME --password $PASSWORD
						docker push salmamattar/udacity-capstone

					'''
				}
			}
		}
		stage('Deply to AWS EKS') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-credentials') {
					sh '''					
						kubectl run udacity-capstone-cluster  --image=jenkins.dkr.ecr.us-west-2.amazonaws.com/udacity-capstone-cluster:latest --kubeconfig=kubeconf.yaml"
					'''
				}
			}
		}
	

*/
		
	}
}
