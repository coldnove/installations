#!/bin/bash

# Update the package index
sudo apt update -y

# Install Java (Jenkins requires Java to run)
sudo apt install -y openjdk-11-jdk

# Verify Java installation
java -version

# Add the Jenkins Debian repository and key to the system
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package index with the new Jenkins repository
sudo apt update -y

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins service to start on boot
sudo systemctl enable jenkins

# Print Jenkins status
sudo systemctl status jenkins

# Output the initial admin password for Jenkins
#echo "Jenkins is installed. The initial admin password is:"
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword
