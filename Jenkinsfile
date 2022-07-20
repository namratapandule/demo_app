pipeline {
  agent any
    
  tools {nodejs "nodejs"}
  tools {Git "git"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://namratapandule: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@github.com/namratapandule/demo_app.git'
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