pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image using Windows batch commands
                    bat 'docker build -t 2318-flask-app .'
                }
            }
        }
        
        stage('Deploy Container') {
            steps {
                script {
                    // Stop and remove existing container if it exists
                    bat 'docker rm -f 2318 || exit 0'
                    
                    // Run new container
                    bat 'docker run -d -p 5000:5000 --name 2318 2318-flask-app'
                }
            }
        }
    }
}
