pipeline {
   agent any
   tools {
       maven 'M3'
     }
     environment {
         registry = "zachlavine/docker-greeting-demo"
         registryCredential = 'dockerhub'
     }
   stages {
           stage('Preparation'){
                    steps {
                        echo 'Preparation'
                        sh "git branch"
                    }
                 }
           stage('Build') {
               steps {
                   sh 'mvn -B -DskipTests clean'
               }
           }
           stage('Test') {
               steps {
                   sh 'mvn test'
               }
           }
           stage('package') {
                          steps {
                              sh 'mvn package'
                          }
                      }
           stage('deploy') {
                          steps {
                                 echo 'deploy'
                                 docker.withRegistery('https/index.docker.io.v1/',registryCredential){
                                        def app = docker.build("${registry}",'.').push()
                                    }
                            }
            }
       }
}
