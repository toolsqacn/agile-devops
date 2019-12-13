pipeline {
  agent any
  environment {
    ENTERPRISE = "agileone"
    PROJECT = "agile-devops"
    ARTIFACT = "agile-devops"
    CODE_DEPOT = "agile-devops"
    
  }
  stages {
    stage('检出') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/toolsqacn/agile-devops.git']]])
      }
    }
    stage('编译') {
      steps {
        sh './mvnw package -Dmaven.test.skip=true'
      }
    }
    stage('单元测试') {
      steps {
        sh "./mvnw test"
      }
      post {
        always {
        	junit 'target/surefire-reports/*.xml'
        }
      }
    }
    stage('打包镜像') {
      steps {
		   sh "echo '镜像打包完成"
      }
    }
    stage('推送到制品库') {
      steps {
		   sh "echo '已推送制品库'"
          }
        }
      }
    }
  }
}