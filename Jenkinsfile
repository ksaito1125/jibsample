pipeline {
  agent none
  stages {
    stage('error') {
      agent {
        node {
          label 'my-jenkins-jenkins-slave '
        }

      }
      steps {
        sh '''mvn --version
mvn clean package
'''
      }
    }

  }
}