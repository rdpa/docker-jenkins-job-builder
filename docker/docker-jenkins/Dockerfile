FROM jenkins
MAINTAINER Reed Palmer <reed.d.palmer@gmail.com>

# Install plugins from plugins.txt
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER root

RUN apt-get update && apt-get install -y\
  python-setuptools \
  python-dev \
  libyaml-dev \
  git \
  curl \
  python-pip \
  python-yaml \
  docker


RUN pip install jenkins-job-builder

RUN git clone https://github.com/rdpa/docker-jenkins-job-builder.git /jjb

CMD while ! curl --output /dev/null --silent --head --fail http://localhost:8080/; \
  do sleep 1; echo -n .; done \
  && jenkins-jobs --conf /jjb/jenkins_jobs.ini update /jjb

USER jenkins

# VOLUME /jjb
