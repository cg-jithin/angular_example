pipeline {
	agent none
  stages {
  	stage('npm install') {
    	agent {
      	docker {
        	image 'node:latest'
        }
      }
      steps {
      	sh 'npm install'
      }
    }
  }
}
