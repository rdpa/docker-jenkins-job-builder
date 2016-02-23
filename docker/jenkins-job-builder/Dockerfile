FROM ubuntu:trusty
MAINTAINER Reed Palmer <reed.d.palmer@gmail.com>

RUN apt-get update && apt-get install -y\
  python-setuptools \
  python-dev \
  libyaml-dev \
  git \
  curl \
  python-pip \
  python-yaml 

RUN pip install jenkins-job-builder

RUN git clone https://github.com/rdpa/docker-jenkins-job-builder.git /jjb

# CMD while ! curl --output /dev/null --silent --head --fail http://jenkins:8080/; \
CMD while ! curl --head --fail http://jenkins:8080/; \
  do sleep 1; echo -n .; done \
  && jenkins-jobs --conf /jjb/jenkins_jobs.ini update /jjb
