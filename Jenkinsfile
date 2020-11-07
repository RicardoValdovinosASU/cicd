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
                    println 'building frontend'

                    backend = docker.build("cicd-backend-jenkins", "./frontend/")
                    println 'building backend'
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
