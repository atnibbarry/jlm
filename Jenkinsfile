pipeline {
    agent any
    tools {nodejs "node"}
    
    stages {
        stage('Git') {
            steps {
                git branch: 'main', 
                url: 'https://github.com/atnibbarry/jlm'
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'node test.js'
            }

        }
    }
}
