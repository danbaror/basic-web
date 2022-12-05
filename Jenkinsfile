pipeline { 
    agent {
      none {
        label 'helm-pod'
        containerTemplate {
          name 'helm'
          image 'danotoma/helm:3.9.0'
          ttyEnabled true
          command 'cat'
        }
      }
    }
    stages {
        stage('Build') { 
            steps { 
                sh "echo 'building...'"
                sh "kubectl get nodes"
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
