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
                  docker build -t application  .
                '''
            }
        }
          stage("Container Creation"){
            steps{
                sh ''' 
                 docker run -d application 
                '''
            }
        }
    }

}
