pipeline { 
    agent {
      any { label 'kubectl-pod' }
    }
    stages {
        stage('Build') { 
            steps { 
                sh "echo 'building...'"
                sh "kubectl -n dan get pods"
                sh "git fetch git@github.com:danbaror/basic-web.git"
                sh "helm list"
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
