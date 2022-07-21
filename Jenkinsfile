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

    //stage('build script checkout') {
      //steps {
        //dir('buildscripts'){
        //checkout([$class: 'GitSCM',branches: [[name: '*/master']],doGenerateSubmoduleConfiguration: false,extensions: [],submoduleCfg: [],userRemoteConfigs: 
        //[[credentialsId:'git_cred',url:"https://namratapandule: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@github.com/namratapandule/buildscripts.git"]]])
      //}
    //}
    //}
     
    /**stage('Build') {
      steps {
      dir('code'){
        sh 'npm install'
      }
    }  
    }*/
    
            
    stage('copy code') {
      steps {
       sshPublisher(publishers: [sshPublisherDesc(configName: 'ec2',transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: "", execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false,patternSeparator: '[,]+', remoteDirectory: "node/api/code", remoteDirectorySDF: false, removePrefix: 'code',sourceFiles: 'code/*')],usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)]) 
      }
    }
  //stage('copy buildscripts') {
      //steps {
       //sshPublisher(publishers: [sshPublisherDesc(configName: 'ec2',transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: "", execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false,patternSeparator: '[,]+', remoteDirectory: 'node/api', remoteDirectorySDF: false, removePrefix: '',sourceFiles: "buildscripts/node/api/**/*")],usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)]) 
      //}
//}

    //stage('Prepare build'){

    //steps {
       //sshPublisher(publishers: [sshPublisherDesc(configName: 'ec2',transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: "ls", execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false,patternSeparator: '[,]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '',sourceFiles: '*')],usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)]) 
      //}
    //}
  //stage('deploy build'){

    //steps {
       //sshPublisher(publishers: [sshPublisherDesc(configName: 'ec2',transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: "cd node/api && sh deploy.sh", execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false,patternSeparator: '[,]+', remoteDirectory: 'node/api', remoteDirectorySDF: false, removePrefix: '',sourceFiles: '')],usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: true)]) 
      //}
    //}


  }
}