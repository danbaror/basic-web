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
                sh "helm list -n dan"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo 'Deploying...'"
                sh "helm upgrade --install ${release} -n ${namespace} ."
            }
        }
        stage('test') {
            steps {
                sh "echo 'testing...'"
                sh "helm list -n ${namespace}"
                sh "kubectl get all -n ${namespace}"
            }
        }
    }
}
