#!/bin/bash
apt-get update
sudo apt-get install git
cd /home/ubuntu
git clone https://github.com/mkyong/spring-boot.git
sudo apt-get install -y default-jdk 
cd /opt
mkdir maven
sudo wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
sudo tar -xvzf apache-maven-3.6.3-bin.tar.gz
sudo mv apache-maven-3.6.3 maven
sudo vi /etc/profile.d/mavenenv.sh
export JAVA_HOME=/usr/lib/jvm/default-java
export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
sudo chmod +x /etc/profile.d/mavenenv.sh
source /etc/profile.d/mavenenv.sh
cd /home/ubuntu/
cd /home/ubuntu/spring-boot/web-thymeleaf-war
mvn clean install
cd 





