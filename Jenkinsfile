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
                 docker build -t application:"${BUILD_NUMBER}" .
                '''
            }
        }
          stage("Container Creation"){
            steps{
                sh '''
                 #!/bin/bash
                 pwd
                 old=$(docker ps | grep -i 8082 | awk {'print $1'})
                 docker kill ${old}
                 docker run -p 8082:8080 -d application:"${BUILD_NUMBER}"
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
