pipeline {
    agent any

    environment {
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', credentialsId: 'GithubCredentialsID', url: 'https://github.com/Balaji5667/my-java-app.git'
            }
        }

        stage('Build Java Code') {
            steps {
                script {
                    echo "Compiling Java Source Code Only..."
                    sh 'javac Main.java'
                }
            }
        }
    }
}
