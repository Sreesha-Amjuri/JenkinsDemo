pipeline {
    agent {label 'centos7'}
    environment {
       BUILD_NUMBER = ${currentBuild.number}
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
                 pwd 
                  docker build -t application-$BUILD_NUMBER
                '''
            }
        }
          stage("Container Creation"){
            steps{
                sh '''
                 pwd
                 docker run -d application-$BUILD_NUMBER
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
