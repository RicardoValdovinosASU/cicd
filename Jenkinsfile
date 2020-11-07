pipeline {

    agent any

    stages {

        stage("build") {

            steps {
                echo 'building...'
                sh "sudo docker-compose up"
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
