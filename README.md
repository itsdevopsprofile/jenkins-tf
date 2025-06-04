# jenkins-tf


````
pipeline {
    agent any 
    
    stages{
        stage('code-pull'){
            steps{
                git branch: 'main', url: 'https://github.com/itsdevopsprofile/jenkins-tf.git'
            }
        }
        stage('tf-create'){
            steps{
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-cred', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
                sh 'terraform destroy -auto-approve'
              }
            }
        }
    }
}
````
