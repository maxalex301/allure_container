FROM openjdk:8-jre
LABEL maintainer "maxalex301"
ARG ALLURE_VER=2.13.3
RUN curl -L https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/${ALLURE_VER}/allure-commandline-${ALLURE_VER}.tgz -o allure.tgz && \
    tar xpf allure.tgz -C /usr/local --strip-components=1 && \
	apt update && \
	apt -y install rsync openssh-client && \
    apt clean
