FROM wouterla/docker-base
MAINTAINER Reed Palmer <reed.d.palmer@gmail.com>

RUN apt-get update && apt-get install -y\
  python-setuptools \
  python-dev \
  libyaml-dev \
  git \
  curl \
  python-pip \
  python-yaml \
  git

RUN pip install jenkins-job-builder