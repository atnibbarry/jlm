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
        
        stage('Build Docker Image') {
            steps {
                script {
                    def imageName = "atnibbarry/jlm:latest"
                    def dockerfile = "Dockerfile"

                    sh "docker build -t ${imageName} -f ${dockerfile} ."
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                withDockerRegistry([credentialsId: 'atnibbarry', url: 'https://registry.hub.docker.com']) {
                    script {
                        def imageName = "atnibbarry/jlm:latest"
                        sh "docker push ${imageName}"
                    }
                }
            }
        }
        
       
    }
}
