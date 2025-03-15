# Docker image for Python Behavior Driven Development Pipeline
FROM rofrano/nyu-devops-base:sp25

# This build image needs to be root to work in IBM Cloud CI/CD
USER root

# Install Selenium, Chrome and Firefox
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates chromium-driver firefox-esr python3-selenium

# Install platform specific tools
COPY install-tools.sh /tmp/
RUN cd /tmp && bash ./install-tools.sh

WORKDIR /app
CMD ["/bin/bash"]
