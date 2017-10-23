FROM jenkins/jenkins:lts-alpine


# Change to root user
USER root

# Docker and Docker Compose versions to be installed
# ARG DOCKER=17.06.2-ce
# ARG DOCKER_COMPOSE=1.16.1
# RUN groupadd -for -g ${DOCKER_GID} ${DOCKER_GROUP}
# RUN usermod -aG ${DOCKER_GROUP} jenkins

RUN apk -U --no-cache add docker shadow

RUN usermod -aG docker jenkins

USER jenkins
