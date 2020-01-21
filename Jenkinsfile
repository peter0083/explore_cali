pipeline {
    agent any
    stages {
        stage('Build our website') {
            steps {
                sh "$PWD/scripts/build.sh"
            }

        }

        stage('Run unit tests') {
            steps {
                sh "$PWD/scripts/test.sh"
            }

        }

        stage('Deploy website') {
            steps {
                sh "$PWD/scripts/deploy.sh"
            }
        }
    }
}