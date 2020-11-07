pipeline {

    agent any
    
    environment {
        frontend = ''
        backend = ''
    }

    stages {

        stage("checkout") {
            steps {
                echo 'checking out scm...'
                checkout scm
            }
        }
        stage("build") {
            steps {
                echo 'building...'

                script {
                    frontend = docker.build("cicd-frontend-jenkins", "./frontend/")
                    sh -c './frontend/docker-build-run.sh'
                    echo 'building frontend'

                    backend = docker.build("cicd-backend-jenkins", "./frontend/")
                    sh -c './backend/docker-build-run.sh'
                    echo 'building backend'
                }
            }
        }
        stage("test") {
            steps {
                echo 'testing...'
            }
        }
        stage("deploy") {
            steps {
                echo 'deploying...'
            }
        }
    }
}
