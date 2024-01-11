pipeline {
    agent any

    parameters {
        string(defaultValue: "https://github.com/umars22/jenkins.git", description: "Enter the name", name: "Git")
        string(defaultValue: "/var/lib/jenkins/workspace/pipeline-test/jenkins/", description: "Enter the directory name", name: "Directory")

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
                    sh "chmod +x ${params.Directory}/script.sh" 
                    sh "./jenkins/script.sh"  // Replace 'cloned_repo' with the actual directory name
                }
            }
        }
    }
}
