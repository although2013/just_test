pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh 'ruby --version'
                sh 'ls'
                sh 'cat README.md'
            }
        }
    }
}