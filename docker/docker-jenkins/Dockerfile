FROM jenkins
MAINTAINER Reed Palmer <reed.d.palmer@gmail.com>

# Install plugins from plugins.txt
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
