pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('Test') {
            echo "testing stage"
        }
        // look here for code coverage! 
        stage('Code Coverage') {
            steps {
                // generate cobertura code coverage report
                // depending on c++, python or rust code, this will be different.
                // this example is using the cobertura coverage analysis tool.
                // take note that you will need to convert it to cobertura format
                sh 'mvn cobertura:cobertura'
                
                // publish the report
                cobertura coberturaReportFile: 'target/site/cobertura/coverage.xml'
            }
        }
    }
}