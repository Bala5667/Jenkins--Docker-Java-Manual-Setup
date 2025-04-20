pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'balaji5667/my-java-app:latest'
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', credentialsId: 'GithubCredentialsID', url: 'https://github.com/Balaji5667/my-java-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'DockerHubCredentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh '''
                            echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                            docker push $DOCKER_IMAGE
                        '''
                    }
                }
            }
        }
    }
}
