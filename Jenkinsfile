pipeline {

    agent any

    stages {

        stage("build") {

            steps {
                echo 'building...'
                sh "docker-compose up"
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
