pipeline {
    agent {label 'centos7'}
    environment {
       BUILD_NUMBER = "${currentBuild.number}"
     }
    stages{
        stage("Build stage"){
            steps{
               
                sh ''' 
                echo "Hello World from Jenkinsfile with a webhook"
                echo " What else we can do "
                '''
            }
        }
         stage("Docker build"){
            steps{
                sh '''
                 #!/bin/bash
                 pwd 
                  docker build -t application-"${env.BUILD_NUMBER}" .
                '''
            }
        }
          stage("Container Creation"){
            steps{
                sh '''
                 #!/bin/bash
                 pwd
                 docker run -d application-"${env.BUILD_NUMBER}"
                '''
            }
        }
          stage("Workspace Cleanup"){
            steps{
                   sh '''
                   echo "Pipeline finshed executing" 
                   
                   '''
            }
        }    
    }

}
