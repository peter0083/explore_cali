pipeline {
    agent any
    stages {
        stage('Build our website') {
            steps {
                sh "scripts/build.sh"
            }

        }

        stage('Run unit tests') {
            steps {
                sh "scripts/test.sh"
            }

        }

        stage('Deploy website') {
            steps {
                sh "scripts/deploy.sh"
            }
        }
    }
}