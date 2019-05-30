pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'rm -rf just_test/'
                sh 'git clone --depth=1 https://github.com/although2013/just_test'
                sh 'cd just_test'
                sh 'cat README.md'
                sh "docker build -t just_test/v${env.BUILD_ID} . "
            }
        }
        stage('post') {
            steps {
                sh 'docker stop $(docker ps -a -q --filter="name=justtest")'
                sh "docker run -p 4567:4567 --rm --name=justtest -d just_test/v${env.BUILD_ID}"
            }
        }
    }
}