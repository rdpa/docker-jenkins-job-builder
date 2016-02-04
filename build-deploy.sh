set -v
set +e
docker kill jjb
docker rm jjb
docker rmi rdpa/jenkins-job-builder
set -e
docker build -t rdpa/jenkins-job-builder docker/jenkins-job-builder/.
docker run -d -name jjb rdpa/jenkins-job-builder
