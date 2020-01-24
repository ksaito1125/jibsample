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
        sh '''mvn --version
mvn clean package
ls -l $HOME/.m2
ls -l $HOME/.m2/repository
'''
      }
    }

  }
}