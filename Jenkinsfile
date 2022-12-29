pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'docker build -t myjenkins-blueocean:2.375.1-1 .'
            }
        }
    }
}