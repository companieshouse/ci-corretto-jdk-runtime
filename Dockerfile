FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.4.0

RUN dnf update -y && \
    dnf install -y  \
    java-25-amazon-corretto-25.0.5* \
    unzip-6.0 \
    zip-3.0 && \
    dnf clean all
