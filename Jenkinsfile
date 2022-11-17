/*pipeline {
environment {
imagename = "kanchansoni/java-maveen"
registryCredential = 'dockerhub'
dockerImage = ''
}
agent any
stages {
stage('Cloning Git') {
steps {
  echo "taking login" 
git([url: 'https://github.com/KanchanSoni16/helloword-java.git', branch: 'main', credentialsId: 'Github'])
}
}
stage('Building image') {
steps{
script {
  sh 'docker build -t kanchansoni/test .'
dockerImage = docker.build imagename
}
}
}
stage('Deploy Image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push("$BUILD_NUMBER")
dockerImage.push('latest')
}
}
}
}
stage('Remove Unused docker image') {
steps{
sh "docker rmi $imagename:$BUILD_NUMBER"
sh "docker rmi $imagename:latest"
}
}
}
}*/


pipeline {
  agent {label 'demo17'}

    stages {
        stage('Build') {
            steps {
                echo 'Building the project'
                }
            }
        stage('Test') {
            steps {
                echo 'Testing the project'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy the project'
            }
        }
      
    }
      post {
        always {
            emailext body: 'this is test body', recipientProviders: [buildUser()], subject: 'This is test mail.', to: 'kanchanawsdemo@gmail.com'
        }
        }
}

