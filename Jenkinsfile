pipeline {
  agent none
  stages {
    stage('Fetch dependencies') {
      agent {
        docker 'circleci/node:10.0-stretch-browsers'
      }
      steps {
        sh 'sudo npm install'
      }
    }
  }
}