pipeline {
    agent any
    stages {
        stage("terraform init") {
            steps {
                echo "Initializing Terraform Provider"
                sh "terraform init"
            }
        }
        stage("terraform plan") {
            steps {
                echo "Planing Terraform resources"
                sh "terraform plan -output terraform.tfplan"
            }
        }
        stage("terraform apply") {
            steps {
                echo "Applying planned resources"
                sh "terraform apply terraform.tfplan"
            }
        }
        stage("Update .tfstate") {
            steps {
                echo "Commiting and pushing updated .tfstate file"
                sh "git add terraform.tfstate"
                sh "git commit terraform.tfstate"
                sh "git push"
            }
        }
    }
}