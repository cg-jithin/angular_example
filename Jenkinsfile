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
    stage('Compile') {
      agent {
        docker 'circleci/node:9.3-stretch-browsers'
      }
      steps {
        // unstash 'node_modules'
        // sh 'yarn build:prod'
        // stash includes: 'dist/', name: 'dist'
      }
    }
  }
}