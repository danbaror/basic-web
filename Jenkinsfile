def release="simple-web"
def namespace="dan"
pipeline { 
    agent {
      any { label 'kubectl-pod' }
    }
    stages {
        stage('Build') { 
            steps { 
                sh "echo ' Now building...'"
                sh "helm list -n dan"
            }
        }
        stage('Deploy') {
            when { expression { return params.action == 'Deploy' } }
            steps {
                sh "echo 'Deploying...'"
                sh "helm upgrade --install ${release} -n ${namespace} ."
            }
        }
        stage('Destroy') {
            when { expression { return params.action == 'Deploy' } }
            steps {
                sh "echo 'Deploying...'"
                sh "helm upgrade --install ${release} -n ${namespace} ."
            }
        }
        stage('Test') {
            steps {
                sh "echo 'Now testing...'"
                sh "helm list -n ${namespace}"
                sh "kubectl get pods -n ${namespace}"
                sh "kubectl get svc -n ${namespace}"
            }
        }
    }
}
