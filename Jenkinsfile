pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                // sh 'ls'
                sh 'docker build -t ng-docker-app:v1.0.0 -f ./Dockerfile .'
                sh 'docker run -p 8200:80 -d ng-docker-app:v1.0.0 --force-recreate'
            }
        }
    }
}