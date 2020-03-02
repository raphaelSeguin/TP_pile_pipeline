pipeline {
    agent any
    stages {
        stage('clean') {
            steps {
                cleanWs()
            }
        }
        stage('git clone') {
            steps {
                git url: 'https://github.com/raphaelSeguin/TP_pile_pipeline.git'
            }
        }
        stage('init') {
            steps{
                withCredentials([file(credentialsId: 'yek', variable: 'terraform')]) {
                    sh 'terraform init -reconfigure terraform'
                    sh 'terraform validate  terraform'
                    sh 'terraform plan -out plan terraform'
                    sh 'terraform apply plan'
                }
            }
        }
    }
}
