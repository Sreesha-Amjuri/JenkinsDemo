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
                 pwd 
                  docker build -t application  .
                '''
            }
        }
          stage("Container Creation"){
            steps{
                sh '''
                 pwd
                 docker run -d application 
                '''
            }
        }
          stage("Workspace Cleanup"){
            steps{
                cleanWs()             
            }
        }    
    }

}
