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
        sh 'type mvn || echo ng'
      }
    }

    stage('error') {
      agent {
        node {
          label 'my-jenkins-jenkins-slave'
        }

      }
      steps {
        sh 'type mvn || echo ng'
      }
    }

  }
}