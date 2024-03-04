pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION = 'eu-west-2'
    }

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['create', 'destroy'], description: 'Create and destroy cluster with one click')
    }

    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }

        stage("Deploy Applications to EKS") {
            when {
                expression { params.ENVIRONMENT == 'create' }
            }
            steps {
                script {
                    def deployStages = ['prometheus', 'voting-app', 'micro-service', 'ingress-rule', 'nginx-controller']

                    deployStages.each { stageName ->
                        dir("kubernetes/$stageName") {
                            sh 'terraform init'
                            sh 'terraform apply -auto-approve'
                        }
                    }
                }
            }
        }

        stage("Destroy Applications in EKS") {
            when {
                expression { params.ENVIRONMENT == 'destroy' }
            }
            steps {
                script {
                    def deployStages = ['prometheus', 'voting-app', 'micro-service', 'ingress-rule', 'nginx-controller']

                    deployStages.each { stageName ->
                        dir("kubernetes/$stageName") {
                            sh 'terraform destroy -auto-approve'
                        }
                    }
                }
            }
        }
    }
}