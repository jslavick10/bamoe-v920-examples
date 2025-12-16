FROM gitpod/workspace-full

# Install Java 17 and Maven
RUN sudo apt-get update && \
    sudo apt-get install -y openjdk-17-jdk maven && \
    sudo apt-get clean
