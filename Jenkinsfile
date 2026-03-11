pipeline {
    agent any

    stages {

        stage('Cleaning WorkSpace') {
            steps {
                echo 'Hello World'
            }
        }

        stage('CheckOut') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[
                        credentialsId: 'Git-Creds',
                        url: 'https://github.com/Murali-Kaspa/Jenkins_CI.git'
                    ]]
                )
            }
        }

        stage('Build Step') {
            steps {
                sh '''
                echo "Hello Murali from ${BUILD_NUMBER}" >> Greet.txt
                '''
                echo "Build Completed"
            }
        }
//
       // stage('Trigger Next Pipeline') {
         //   steps {
           //     build job: 'CD-Pipeline'
            // }
       // }
//
    }
}
