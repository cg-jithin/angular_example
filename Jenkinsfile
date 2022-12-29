pipeline {
  agent none
  stages {
    stage('Fetch dependencies') {
      agent {
        docker 'node:19-alpine3.16'
      }
      steps {
        sh 'npm install'
      }
    }
  }
}