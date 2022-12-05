pipeline { 
    agent {
      any {
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
                sh "kubectl -n dan get pods"
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
