/*
pipeline {
   agent any
   def commit_id

   tools {
      // Install the Maven version configured as "M3" and add it to the path.
      maven "M3"
   }

   stages {
      stage('Preparation'){
         checkout scm
         sh "git rev-parse --short HEAD/commit-id"
         commit_id = readFile('.git/commit-id').trim()
      }
      stage('test'){
         sh 'mvn test'
      }
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            git ' https://github.com/zachlavine8D/complete.git'

            // Run Maven on a Unix agent.
            sh "mvn -Dmaven.test.failure.ignore=true clean package"

            // To run Maven on a Windows agent, use
            // bat "mvn -Dmaven.test.failure.ignore=true clean package"
         }
      }
      stage('deploy'){
         docker.withRegistery('https/index.docker.io.v1/','dockerhub'){
            def app = docker.build("zachlavine/docker-greeting-demo:${commit_id}",'.').push()
         }
      }
   }
} */
pipeline {
    agent { agent any }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}