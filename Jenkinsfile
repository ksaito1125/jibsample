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
mvn --version
java -version
type docker || echo ng
type git || echo ng
type mvn || echo ng'''
      }
    }

  }
}