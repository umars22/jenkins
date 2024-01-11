pipeline {
    agent any

    parameters {
        string(defaultValue: "enter Git repo link here", description: "Enter the name", name: "Git")
        string(defaultValue: "cloned_repo", description: "Enter the directory name", name: "Directory")

    }

    stages {
        stage('Delete Existing Directory') {
            steps {
                script {
                    sh "rm -rf ${params.Directory}"  // Replace 'cloned_repo' with the actual directory name
                }
            }
        }

        stage('Clone Git Repository') {
            steps {
                script {
                    sh "git clone ${params.Git} "  // Replace 'cloned_repo' with the desired directory name
                }
            }
        }

        stage('Execute script.sh') {
            steps {
                script {
                    sh "./jenkins/script.sh"  // Replace 'cloned_repo' with the actual directory name
                }
            }
        }
    }
}
