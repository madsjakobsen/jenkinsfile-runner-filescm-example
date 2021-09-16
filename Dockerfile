FROM jenkins/jenkinsfile-runner
COPY plugins.yaml /usr/share/jenkins/ref/plugins.yaml
RUN cd /app/jenkins && jar -cvf jenkins.war *
RUN java -jar /app/bin/jenkins-plugin-manager.jar --war /app/jenkins/jenkins.war --plugin-file /usr/share/jenkins/ref/plugins.yaml && rm /app/jenkins/jenkins.war
