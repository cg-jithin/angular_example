pipeline {
    agent { docker { image 'node:16.17.1-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
                sh 'npm install -g @angular/cli'
                sh 'npm install'
            }
        }
    }
}
