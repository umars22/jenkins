pipeline {
    agent any

    parameters {
        string(defaultValue: "enter git repo link here", description: "Enter the name", name: "Git")
    }

    stages {
        stage('bruh') {
            steps {
                script {
                    sh "git clone ${params.Git}"
                }
            }
        }
    }
}
