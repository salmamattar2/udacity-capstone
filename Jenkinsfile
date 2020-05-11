pipeline {
	agent any
	stages {

		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e *.html'
			}
		}
		
		stage('Build Docker Image') {
			steps {
					sh '''
						docker build --tag=salmamattar/udacity-capstone .
					'''
				
			}
		}

		stage('Push Docker Image to dockerhub ') {
			
			steps {
			withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId:'dockerhub-credentials',usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']])
			{
					sh '''
						docker login --username $USERNAME --password $PASSWORD
						docker push salmamattar/udacity-capstone

					'''
				}
			}
		}
		stage('Deply to AWS cluster') {
			steps {
				withAWS(region:'us-west-2', credentials:'aws-credentials') {
					sh '''					
						kubectl run udacity-capstone-cluster  --image=jenkins.dkr.ecr.us-west-2.amazonaws.com/udacity-capstone-cluster:latest --kubeconfig=kubeconf.yaml"
					'''
				}
			}
		}
	


		
	}
}
