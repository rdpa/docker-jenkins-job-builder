FROM wouterla/docker-base
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

CMD while ! curl --output /dev/null --silent --head --fail http://localhost/; \
  do sleep 1; echo -n .; done \
  && jenkins-jobs --conf ../../jenkins_jobs.ini update ../../
