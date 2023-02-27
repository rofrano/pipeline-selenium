# Docker image for Python Behavior Driven Development Pipeline
FROM rofrano/nyu-devops-base:sp23

# This build image needs to be root
USER root

RUN apt-get update && \
    apt-get install -y chromium-driver python3-selenium

WORKDIR /app

CMD ["/bin/bash"]
