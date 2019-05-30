pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh docker build 
                sh 'ruby --version'
                sh 'ls'
                sh 'cat README.md'
            }
        }
    }
}