FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install Java 17 and Maven
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        openjdk-17-jdk \
        wget \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Maven 3.9.9
ARG MAVEN_VERSION=3.9.9
ARG MAVEN_SHA=a555254d6b53d267965a3404ecb14e53c3827c09c3b94b5678835887ab404556bfaf78dcfe03ba76fa2508649dca8531c74bca4d5846513522404d48e8c4ac8b
RUN wget -q https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && echo "${MAVEN_SHA} apache-maven-${MAVEN_VERSION}-bin.tar.gz" | sha512sum -c - \
    && tar xzf apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt \
    && ln -s /opt/apache-maven-${MAVEN_VERSION} /opt/apache-maven \
    && rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

# Set Maven environment variables
ENV MAVEN_HOME=/opt/apache-maven
ENV PATH="${MAVEN_HOME}/bin:${PATH}"

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
