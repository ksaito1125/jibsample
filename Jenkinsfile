pipeline {
  agent none
  stages {
    stage('error') {
      agent {
        node {
          label 'default'
        }

      }
      steps {
        sh 'ls -l'
      }
    }

  }
}