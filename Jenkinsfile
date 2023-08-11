pipeline {
    agent any
    stages {
        stage("terraform init") {
            steps {
                echo "Initializing Terraform Provider"

                terraform init
            }
        }
        stage("terraform plan") {
            steps {
                echo "Planing Terraform resources"

                terraform plan -output terraform.tfplan
            }
        }
        stage("terraform apply") {
            steps {
                echo "Applying planned resources"

                terraform apply terraform.tfplan -auto-approve
            }
        }
        stage("Update .tfstate") {
            steps {
                echo "Commiting and pushing updated .tfstate file"

                git add terraform.tfstate
                git commit terraform.tfstate
                git push
            }
        }
    }
}