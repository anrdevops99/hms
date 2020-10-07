pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('SCM') {
            steps {
                git branch: 'develop', credentialsId: 'pwdgithub', url: 'https://github.com/hms.git'
            }
        }
        stage('Build') {
            steps {
                echo 'BUILD'
                sh 'hostname'
				sh 'cd aba &&  ls -lart'
				echo '*****************'
            }
        }
    }
}

