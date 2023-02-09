
pipeline {
        agent any
    stages {
    
        stage('git clone') {
            steps {
                git branch: 'main', credentialsId: 'jenkins', url: 'git@gitlab.com:Aguerbaoui/project-6.git'
            
            
            }
        
        }

        stage('Build') {
                steps {
                     withMaven(maven: 'Maven') {
                    sh script: 'mvn clean install package'}
        
                }
        }
        
       /*  stage('Build image and run Docker container on remote host') {
                 steps {
         sshPublisher(publishers: [sshPublisherDesc(configName: 'ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '''docker stop tomcat-container; 
                docker rm tomcat-container; 
                docker rmi tomcat-image; 
                docker build -t tomcat-image .; 
                docker run -d --name tomcat-container -p 8080:8080 tomcat-image; ''', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'webapp/target', sourceFiles: 'webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
              
                 }
        }*/
        stage('test docker')
            steps{
              sshPublisher(publishers: [sshPublisherDesc(configName: 'ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'docker images', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'Dockerfile')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])

            }

 


    } 

} 

