pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('MyAWSCredentials')  // Jenkins secret text credential ID
        AWS_SECRET_ACCESS_KEY = credentials('MyAWSCredentials')  // Jenkins secret text credential ID
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Deploy Ghost CMS') {
            steps {
                sh 'yum update -y'
                sh 'yum install -y nodejs npm'
                sh 'npm install -g ghost-cli'
                sh 'mkdir ghost'
                sh 'cd ghost && ghost install && ghost start'

            }
        }
    }
}
