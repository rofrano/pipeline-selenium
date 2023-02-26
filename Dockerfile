# Docker image for Python Behavior Driven Development Pipeline
FROM rofrano/nyu-devops-base:sp23

RUN sudo apt-get update && \
    sudo apt-get install -y chromium-driver python3-selenium

WORKDIR /app

CMD ["/bin/bash"]
