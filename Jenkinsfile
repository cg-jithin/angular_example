pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                // sh 'ls'
                sh 'docker build -t angular-app:latest .'
                sh 'docker run -d -p 1212:80 angular-app:latest .'
            }
        }
    }
}