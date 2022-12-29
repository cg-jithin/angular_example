pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                // sh 'ls'
                sh 'sudo docker build -t angular-app:latest .'
                sh 'sudo docker run -d -p 1212:80 angular-app:latest .'
            }
        }
    }
}