pipeline {
    agent {
        node {
            label 'built-in'
			customWorkspace '/mnt/docker'
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
			
		stage ('start docker') {
			steps {
				sh 'systemctl start docker'
			}
		}
		
		stage ('build dockerimage') {
			steps {
				sh 'docker build -t tomcat:1 .'
				}
				}
		stage ('create container and run') {
			steps {
				sh 'docker run -itdv /mnt/docker/webapp/target:/usr/local/tomcat/webapps -p 90:8080  tomcat:1'
			}
		}				
    }
	
}
