pipeline {
  agent none
  stages {
    stage('Info') {
      agent {
        node {
          label 'my-jenkins-jenkins-slave '
        }

      }
      steps {
        sh '''mvn --version
ls -l $HOME/.m2 || echo no cache'''
      }
    }

    stage('build') {
      steps {
        sh '''mvn clean package
'''
      }
    }

    stage('check') {
      steps {
        sh 'ls -l $HOME/.m2'
      }
    }

  }
}