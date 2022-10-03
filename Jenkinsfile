pipeline {
    agent {
        node {
            label 'built-in'
			customWorkspace '/home/ec2-user/'
		}
	}
    stages {
        stage ('Compile Stage') {

            steps {
                
                    sh 'mvn clean compile'
                }
		}

        stage ('Install Stage') {
            steps {
                
                    sh 'mvn install'
                }
            }
			
		stage ('cp file dev1 and run con1') {
			steps {
				sh 'scp /home/ec2-user/target/*.war qtrader@10.0.1.234:/mnt'
				sh 'sudo su - qtrader'
				sh 'ssh 10.0.1.234'
				sh 'docker run -itdv /mnt/*.war:/usr/local/tomcat/webapps -p 8090:8080--name dev1deploy tomcat:9'
				sh 'exit'
				sh 'exit'
			}
		}
		
		stage ('cp file dev2 and run container2') {
			steps {
				sh 'scp /home/ec2-user/target/*.war qtrader@10.0.2.214:/mnt'
				sh 'sudo su - qtrader'
				sh 'ssh 10.0.2.214'
				sh 'docker run -itdv /mnt/*.war:/usr/local/tomcat/webapps -p 8020:8080--name dev2deploy tomcat:9'
				sh 'exit'
			}
		}				
	}	
}
