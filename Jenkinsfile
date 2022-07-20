pipeline {
  agent any
    
  tools {nodejs "nodejs"}
  
    
  stages {
        
    stage('code checkout') {
      steps {
        checkout([$class: 'GitSCM',branches: [[name: '*/main']],doGenerateSubmoduleConfiguration: false,extensions: [],submoduleCfg: [],userRemoteConfigs: 
        [[credentialsId:'git_cred',url:"https://namratapandule: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@github.com/namratapandule/demo_app.git"]]])
      }
    }
     
    stage('Build') {
      steps {

        dir('code'){
        sh 'npm install'
        }
      }
    }  
    
            
    stage('deploy') {
      steps {
       sshPublisher(publishers: [sshPublisherDesc(configName: '',transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false,patternSeparator: '[,]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'dist/',sourceFiles: 'dist/Lending-PORTAL/**/*')],usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)]) 
      }
    }
  }
}