pipeline{
    agent any
    stages{
        stage ('Build')
        {
            steps{
		echo '---Project build started---'
		sh 'python FirstProgram.py'
		sh 'docker build -t prime1.0 .'
                echo '---project build finished---'
            }
        }
        stage ('test')
        {
            steps{
		echo '---Project testing started---'
		sh 'python FirstProgram.py'
                echo '---project testing finished---'
            }
        }
	stage ('deploy testing 1')
        {
            steps{
		echo '---Project deploy started---'
		sh 'python FirstProgram.py'
                echo '---project deploy finished---'
            }
        }
    }
    
}
