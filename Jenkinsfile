pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git 'https://github.com/<your_username>/2318.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    docker.build('2318')
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                // Remove any existing container with the same name
                script {
                    sh 'docker rm -f 2318 || true'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                // Run a new container from the Docker image
                script {
                    docker.image('2318').run('--name 2318 -p 5000:5000')
                }
            }
        }
    }
}
