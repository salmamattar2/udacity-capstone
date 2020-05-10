pipeline {
	agent any
	stages {

		stage('Lint HTML') {
			steps {
				sh 'tidy -q -e *.html'
			}
		}
		stage('Build and Push Docker Image') {
			steps {
				withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId:'dockerhub-credentials',usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']
]){
					sh '''
						docker build -t salmamattar/udacity-capstone.
						docker login -u $USERNAME -p $PASSWORD
						docker push salmamattar/udacity-capstone

					'''
				}
			}
		}

/*

		stage('Set current kubectl context') {
			steps {
				withAWS(region:'us-east-1', credentials:'ecr_credentials') {
					sh '''
						kubectl config use-context arn:aws:eks:us-east-1:142977788479:cluster/capstonecluster
					'''
				}
			}
		}

		stage('Deploy blue container') {
			steps {
				withAWS(region:'us-east-1', credentials:'ecr_credentials') {
					sh '''
						kubectl apply -f ./blue-controller.json
					'''
				}
			}
		}

		stage('Deploy green container') {
			steps {
				withAWS(region:'us-east-1', credentials:'ecr_credentials') {
					sh '''
						kubectl apply -f ./green-controller.json
					'''
				}
			}
		}

		stage('Create the service in the cluster, redirect to blue') {
			steps {
				withAWS(region:'us-east-1', credentials:'ecr_credentials') {
					sh '''
						kubectl apply -f ./blue-service.json
					'''
				}
			}
		}

		stage('Wait user approve') {
            steps {
                input "Ready to redirect traffic to green?"
            }
        }

		stage('Create the service in the cluster, redirect to green') {
			steps {
				withAWS(region:'us-east-1', credentials:'ecr_credentials') {
					sh '''
						kubectl apply -f ./green-service.json
					'''
				}
			}
		}
*/
	}
}
