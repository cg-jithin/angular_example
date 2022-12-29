pipeline {
  agent {
    docker { image 'node:latest' }
  }
        stage('Run Project') {
            agent {
                docker {
                    image 'yolch/ng-test-build:latest'
                    reuseNode true
                }
            }

            steps {
                sh '''
                npm install
                ng test --browsers ChromeHeadlessCustom --watch false
                ng build --prod
                '''
            }
        }
}
