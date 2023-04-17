ARG CORE_VERSION="latest"
FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:${CORE_VERSION}

RUN dnf update -y && \
    dnf install -y  \
    java-17-amazon-corretto \
    unzip \
    zip && \
    dnf clean all