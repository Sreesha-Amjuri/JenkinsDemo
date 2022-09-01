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
         stage("Script stage"){
            steps{
                sh ''' 
                 chmod +x sample.sh
                 ./sample.sh >time.txt
                '''
            }
        }
          stage("Artifact stage"){
            steps{
                sh ''' 
                 cat time.txt
                '''
            }
        }
    }

}
