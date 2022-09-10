pipeline {
    agent any
    stages {
        stage('Cleaning Up WS') {
            steps {
                cleanWs ()
                sh 'git clone https://github.com/SouvikGhosh05/Terraform_aws.git'
            }
        }
        stage('Terraform Create Resources') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'souvik-aws-creds', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh '''
                    cd Terraform_aws
                    terraform init
                    terraform destroy -auto-approve
                    terraform plan 
                    terraform apply -auto-approve
                    '''
                }
            }
        }
    }
}