pipeline {
    agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('test') { 
            steps {
                sh 'cd testing-junit5-mockito | mvn test'
            }
        }
    }
}
