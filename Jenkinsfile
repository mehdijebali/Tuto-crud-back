pipeline {
      agent any
      environment {
          registry = "mehdijebali/crud-back"
          dockerImage = ''
    }
      tools {maven "LocalMaven"}      
            
      stages {
            stage('Initialization') {
                  steps {
                        echo '**** Starting Pipeline Job ****'
                  }
            }
            stage('Build Jar File') {
                  steps {
                        echo '**** Build jar file ****'
                        sh 'mvn clean package'
                  }
            }
            stage('Build Docker Image') {
                  steps {
                      script {
                        sudo dockerImage = docker.build registry + ":$BUILD_NUMBER"
                        }
                }
                        
            }
      }
}