pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'git clone --depth=1 https://github.com/although2013/just_test'
                sh 'ruby --version'
                sh 'cd just_test'
                sh 'cat README.md'
                sh "docker -t just_test/v${env.BUILD_ID} . "
            }
        }
    }
}