pipeline {
    agent any
    environment {
        AWS_ACCOUNT_ID="212178105583"
        AWS_DEFAULT_REGION="us-east-1"
        IMAGE_REPO_NAME="jenkins-docker-image-ecr"
        IMAGE_TAG="Latest"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
    }
}
    stages {
        stage('Logging into AWS ECR') {
            steps {
                script  {
                    sh """
                        aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | \\
                        docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com
                    """
                }
            }
        }
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'AKIATCZWM6TX72NHUHAU', url: '