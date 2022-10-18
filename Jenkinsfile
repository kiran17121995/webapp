pipeline {
    agent {
        node {
            label 'built-in'
			customWorkspace '/data/project-myapp'
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
    }
}
