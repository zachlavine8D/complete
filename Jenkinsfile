pipeline {
   agent any
   tools {
       maven 'M3'
     }
     /* environment {
         registry = "zachlavine/docker-greeting-demo"
         registryCredential = 'dockerhub'
     } */
   stages {
           stage('Preparation'){
                    steps {
                        echo 'Preparation'
                        checkout scm
                        sh "git rev-parse --short HEAD/commit-id"
                        commit_id = readFile('.git/commi8t-id').trim()
                        echo 'commit_id $commit_id'
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
                                 /* docker.withRegistery('https/index.docker.io.v1/',dockerhub){
                                        def app = docker.build("${registry}:${commit_id}",'.').push()
                                    } */
                            }
            }
       }
}
