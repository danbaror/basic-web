def release="simple-web"
def namespace="dan"
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
        stage('Deploy') {
            steps {
                sh "echo 'Deploying...'"
                sh "helm upgrade --install ${release} -n ${namesapce}"
            }
        }
    }
}
