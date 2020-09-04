pipeline{
    agent any
    stages{
        stage('gitcheckout'){
            steps{
                echo 'Check out replaced.'
                echo 'Project checkout completed.'
                
            }
        }
        stage ('Build')
        {
            steps{
                echo 'project build finished'
            }
        }
        stage ('test')
        {
            steps{
                echo 'project testing completed'
            }
        }
    }
    
}
