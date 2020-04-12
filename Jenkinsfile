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
                    checkout scm
                    sh "git rev-parse --short HEAD/commit-id"
                    commit_id = readFile('.git/commit-id').trim()
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
           stage('deploy'){
                    docker.withRegistery('https/index.docker.io.v1/','dockerhub'){
                       def app = docker.build("${registry}:${commit_id}",'.').push()
                    }
            }
       }
}
