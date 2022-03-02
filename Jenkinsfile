pipeline {
      agent any
      tools {
             maven "LocalMaven"
             docker "docker"
            }
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
                        echo '**** Build Docker Image ****'
                        sh 'docker build -t mehdijebali/crud-back:1.4:${env.BUILD_ID} .'
                  }
            }
      }
}