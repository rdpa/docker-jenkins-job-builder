set -v
set +e
docker kill jenkins jenkins-job-builder
docker rm jenkins jenkins-job-builder
set -e
docker build --no-cache -t rdpa/jenkins docker/jenkins/.
docker build --no-cache -t rdpa/jenkins-job-builder docker/jenkins-job-builder/.
docker push rdpa/jenkins
docker push rdpa/jenkins-job-builder
