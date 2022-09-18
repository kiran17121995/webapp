pipeline {
    agent {
        node {
            label 'server-1'
	customWorkspace '/mnt/jenkins/'
		}
	}
    stages {
        stage ('Compile Stage') {

            steps {
                
                    sh 'mvn clean compile'
                }
        }

        stage ('Testing Stage') {

            steps {
                
                    sh 'mvn test'
                }
        }

        stage ('Install Stage') {
            steps {
                
                    sh 'mvn install'
                }
            }
			
		stage ('install docker') {
			steps {
				sh 'sudo yum install docker -y'
				sh 'systemctl start docker'
			}
		}
		
		stage ('build dockerimage') {
			steps {
				sh 'docker build -t tomcat:1 /mnt/jenkins/webapp'
				}
				}
		stage ('create container and run') {
			steps {
				sh 'docker run -itd -p 90:8080 tomcat:1'
			}
		}				
    }
	
}
