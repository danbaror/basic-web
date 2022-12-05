pipeline { 
    agent {
      any { label 'kubectl-pod' }
    }
    stages {
        stage('Build') { 
            steps { 
                sh "echo 'building...'"
                sh "kubectl -n dan get pods"
                sh "helm list -n dan"
            }
        }
        stage('Test'){
            steps {
                sh "echo 'Testing...'" 
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 'Deploying...'"
            }
        }
    }
}
