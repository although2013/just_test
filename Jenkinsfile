pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'rm -rf just_test'
                sh 'git clone --depth=1 https://github.com/although2013/just_test'
                sh 'cd just_test'
                sh 'cat README.md'
                sh "docker -t just_test/v${env.BUILD_ID} . "
            }
        }
    }
}