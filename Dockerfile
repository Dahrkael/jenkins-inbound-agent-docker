# Use the official Jenkins agent image as the base
FROM jenkins/inbound-agent:latest

# Install Docker
USER root
RUN curl -sSL https://get.docker.com | sh

# Configure Docker to run as non-root user
#RUN groupadd docker
RUN usermod -aG docker jenkins

#RUN mkdir -p /var/lib/docker
#VOLUME /var/lib/docker
