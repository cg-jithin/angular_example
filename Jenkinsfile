pipeline {
	agent none
  stages {
  	stage('NPM install') {
    	agent {
      	docker {
        	image 'node'
        }
      }
      steps {
      	sh 'npm install'
      }
    }
  }
}
