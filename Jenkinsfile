pipeline {
  agent none
  stages {
    stage('Fetch dependencies') {
      agent {
        docker 'circleci/node:9.3-stretch-browsers'
      }
      steps {
        sh 'npm install'
      }
    }
  }
}