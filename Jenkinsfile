# Jenkinsfile
pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                // Clean workspace before cloning
                cleanWs()
                // Clone the repository
                git branch: 'main', url: 'https://github.com/YOUR_USERNAME/RollNo_ISA2.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t rollno-flask-app .'
                }
            }
        }
        
        stage('Deploy Container') {
            steps {
                script {
                    // Stop and remove existing container if it exists
                    sh 'docker rm -f XXXXX || true'
                    
                    // Run new container
                    sh 'docker run -d -p 5000:5000 --name XXXXX rollno-flask-app'
                }
            }
        }
    }
}
