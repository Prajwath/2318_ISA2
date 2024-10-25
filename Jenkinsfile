// Jenkinsfile
pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git 'https://github.com/yourusername/<RollNo>_ISA2'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    docker.build("<RollNo>_image")
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                script {
                    // Stop and remove existing container if it exists
                    sh "docker rm -f <RollNo> || true"
                }
            }
        }
        stage('Run New Container') {
            steps {
                script {
                    // Run the Docker container in daemon mode
                    sh "docker run -d --name <RollNo> <RollNo>_image"
                }
            }
        }
    }
    triggers {
        // Poll the GitHub repository for changes every 10 minutes
        pollSCM('H/10 * * * *')
    }
}
