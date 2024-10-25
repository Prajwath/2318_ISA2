pipeline {
    agent any
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t 2318-flask-app .'
                }
            }
        }
        
        stage('Deploy Container') {
            steps {
                script {
                    // Stop and remove existing container if it exists
                    sh 'docker rm -f 2318 || true'
                    
                    // Run new container
                    sh 'docker run -d -p 5000:5000 --name 2318 2318-flask-app'
                }
            }
        }
    
}
