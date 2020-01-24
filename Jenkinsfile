pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        node {
          label 'my-jenkins-jenkins-slave '
        }

      }
      steps {
        sh '''pwd
aws'''
      }
    }

  }
}