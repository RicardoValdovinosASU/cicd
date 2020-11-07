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
                script {
                    println 'building frontend...'
                    frontend = docker.build("cicd-frontend-jenkins", "./frontend/")
                    docker.image('cicd-frontend-jenkins:latest').withRun('-p 8082:3000 -d --name=cicd-frontend-jenkins cicd-frontend-jenkins') { c -> }

                    println 'building backend...'
                    dir('./backend/') {
                        backend = docker.build("cicd-backend-jenkins", ".")
                    }
                }
            }
        }
        stage("test") {
            steps {
                echo 'testing...'
                script {
                    dir('./backend/') {
                        sh('./mvnw test')
                    }
                }
            }
        }
        stage("deploy") {
            steps {
                echo 'deploying...'
            }
        }
    }
}
