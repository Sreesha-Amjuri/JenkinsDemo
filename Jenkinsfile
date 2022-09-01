pipeline {
    agent {label 'centos7'}
    
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
                 whoami
                 docker build -t application-"${BUILD_NUMBER}" 
                '''
            }
        }
          stage("Container Creation"){
            steps{
                sh '''
                 #!/bin/bash
                 pwd
                 docker run -d application-"${BUILD_NUMBER}"
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
