pipeline{
    agent any
    stages{
        stage ('Build')
        {
            steps{
		echo '---Project build started---'
		sh 'python' FirstProgram.py
                echo '---project build finished---'
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
