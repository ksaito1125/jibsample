pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        node {
          label 'default'
        }

      }
      steps {
        sh 'type mvn || echo ng'
      }
    }

    stage('error') {
      agent {
        node {
          label 'default'
        }

      }
      steps {
        sh 'type mvn || echo ng'
      }
    }

  }
}