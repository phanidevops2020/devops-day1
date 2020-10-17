pipeline{
	agent any
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
		sh 'docker build -t secondprogram1.0 .'
		sh 'docker images'	
		sh 'docker ps'
		sh 'docker ps -a'
		sh 'docker run secondprogram1.0'		    
                echo '---project build finished---'
		    
            }
		
        }
	stage ('Sonar')
        {
		environment {
            		def scannerHome = tool name: 'SonarQubeScanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation';
        	}
	    steps{
		withSonarQubeEnv('SonarQubeServer') 
		    {	
			sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=devops-day1 -Dsonar.exclusions=appdynamics/** -Dsonar.jacoco.reportPaths=build/jacoco/test.exec -Dsonar.junit.reportPaths=build/test-results/test -Dsonar.sources=FirstProgram.py"
			    //sh “/var/lib/jenkins/hudson.plugins.sonar.SonarRunnerInstallation/sonarqubescanner/bin/sonar-scanner -Dsonar.host.url=http://phaniavula.eastus.cloudapp.azure.com:9000/ -Dsonar.projectName=devops-day1 -Dsonar.projectVersion=1.0 -Dsonar.projectKey=devops-day1:FirstProgram.py -Dsonar.sources=. -Dsonar.projectBaseDir=/var/lib/jenkins/workspace/Job2-multibranch_dev"
		}
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
