pipeline {
  agent any
    
  tools nodejs "nodejs"
  
    
  stages {
        
    stage('code checkout') {
      steps {
        checkout([$class: 'GitSCM',branches: [[name: '*/main']],doGenerateSubmoduleConfiguration: false,extensions: [],submoduleCfg: [],userRemoteConfigs: 
        [[credentialsId:'git_cred',url:"https://namratapandule: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@github.com/namratapandule/demo_app.git"]]])
      }
    }
     
    stage('Build') {
      steps {
        sh 'npm install'
         sh '<<Build Command>>'
      }
    }  
    
            
    stage('Test') {
      steps {
        sh 'node test'
      }
    }
  }
}