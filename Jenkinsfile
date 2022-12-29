pipeline {
    agent any
    triggers {
        githubPush()
        }
    stages {
        stage('Test') {
            steps {
                // sh 'ls'
                sh 'docker rmi -f ng-docker-app:v1.0.0'
                sh 'docker build -t ng-docker-app:v1.0.0 -f ./Dockerfile .'
                sh 'docker stop angular-test'
                sh 'docker rm angular-test'
                sh 'docker run --name angular-test -p 8200:80 -d ng-docker-app:v1.0.0'
            }
        }
    }
}