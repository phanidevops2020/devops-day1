pipeline{
	agent {
		docker { image 'alpine'	}
	}
    stages{
        stage ('Build')
        {
	    steps{
		script{
			def workspace = pwd()
		}	
		echo '---Project build started---'
		echo '---working on FirstProgram---'
		sh 'python FirstProgram.py'
		echo '---working on docker---'		
		sh "echo ${workspace}"
		sh "chmod 777 ${workspace}"
		sh 'docker build -t SecondProgram1.0 .'
		sh 'docker images'	
		sh 'docker ps'
		sh 'docker ps -a'
		sh 'docker run SecondProgram1.0'		    
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
