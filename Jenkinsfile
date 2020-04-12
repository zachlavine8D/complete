pipeline {
   agent any
   stages {
      stage('Hello') {
      def mvnHome = tool 'M3'
         steps {
            echo 'Hello World'
            sh 'mvn --version'
         }
      }
   }
}
