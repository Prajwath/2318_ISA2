// Jenkinsfile
pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repo
                git 'https://github.com/Prajwath/2318_ISA2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    docker.build("2318_image")
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                script {
                    sh "docker rm -f 2318 || true"
                }
            }
        }
        stage('Run New Container') {
            steps {
                script {
                    // Run the Docker container
                    sh "docker run -d --name 2318 2318_image"
                }
            }
        }
    }
    triggers {
        // Poll the GitHub repository for changes every 10 minutes
        pollSCM('H/10 * * * *')
    }
}
