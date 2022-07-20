pipeline {
  agent any
    
  tools {nodejs "nodejs"}
  
    
  stages {
        
    stage('code checkout') {
      steps {
        dir('code'){
        checkout([$class: 'GitSCM',branches: [[name: '*/main']],doGenerateSubmoduleConfiguration: false,extensions: [],submoduleCfg: [],userRemoteConfigs: 
        [[credentialsId:'git_cred',url:"https://namratapandule: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@github.com/namratapandule/demo_app.git"]]])
      }
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
       sshPublisher(publishers: [sshPublisherDesc(configName: 'ec2',transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: "npm run start", execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false,patternSeparator: '[,]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '',sourceFiles: '/code/**/*')],usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)]) 
      }
    }
  }
}