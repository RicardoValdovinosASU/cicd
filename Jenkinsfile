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
                    sh('./frontend/docker-build-run.sh')
                    println 'building frontend'

                    sh('./frontend/docker-build-run.sh')
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
