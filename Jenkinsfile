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
            stage('Code Quality Check via SonarQube') {
                  steps {
                        script {
                        def scannerHome = tool 'sonarqube';
                              withSonarQubeEnv("sonarqube") {
                              sh "${tool("sonarqube")}/bin/sonar-scanner \
                              -Dsonar.projectKey=Backend \
                              -Dsonar.sources=./src/main/java/ \
                              -Dsonar.language=java \
                              -Dsonar.java.binaries=./target/classes/   
                              -Dsonar.host.url=http://localhost:9000"
                              }
                        }                  
                  }
            }
            stage('Build Jar File') {
                  steps {
                        echo '**** Build jar file ****'
                        sh 'mvn clean package'
                  }
            }
            // stage('Build Docker Image') {
                  // steps {
                  //     script {
                  //    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                        // }
            //     }
            //}
      }
}