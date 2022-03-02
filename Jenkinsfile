pipeline {
      agent any
      tools {maven "LocalMaven"}
      tools {docker "docker"}       
            
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
                        docker.build mehdijebali/crud-back:$BUILD_NUMBER
                  }
            }
      }
}