FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.0.2

RUN dnf update -y && \
    dnf install -y --releasever=latest \
    java-17-amazon-corretto-17.0.21.1.2 \
    unzip \
    zip && \
    dnf clean all
