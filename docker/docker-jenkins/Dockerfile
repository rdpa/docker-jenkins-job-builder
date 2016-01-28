FROM jenkins
MAINTAINER Reed Palmer <reed.d.palmer@gmail.com>

ENV JENKINS_UC http://updates.jenkins-ci.org

# Add configuration for jenkins and plugins
RUN mkdir -p /var/jenkins_home

# Install plugins from plugins.txt
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Add configuration files
# ADD jenkins_home/* /var/jenkins_home

# Expose the jenkins dir as a volume
VOLUME /var/jenkins_home
