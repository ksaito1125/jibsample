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
        sh '''ls -l
type docker
type git
type mvnn'''
      }
    }

  }
}