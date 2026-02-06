FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.1.0

RUN dnf update -y && \
    dnf install -y  \
    java-21-amazon-corretto-21.0.3* \
    unzip-6.0-57* \
    zip-3.0-28* && \
    dnf clean all
