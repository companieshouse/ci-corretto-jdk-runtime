FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.4.0

RUN dnf update -y && \
    dnf install -y  \
    java-21-amazon-corretto-21.0.13* \
    unzip-6.0 \
    zip-3.0 && \
    dnf clean all

# Workaround pending release of amazonlinux:2023.12.20261117 to dockerhub
RUN dnf update -y java-21-amazon-corretto --releasever 2023.12.20261117
