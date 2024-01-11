pipeline {
    agent any

    parameters {
        string(defaultValue: "enter git repo link here", description: "Enter the name", name: "Git")
    }

    stages {
        stage('bruh') {
            steps {
                script {
                    sh "git clone  ${params.Git}"
                }
            }
        }
        stage('execute script') {
          steps{
              script {
                  sh "./jenkins/script.sh"
              }
          }
        }
    }
}
