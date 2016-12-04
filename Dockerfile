FROM centos:7.2.1511

RUN yum update -y \
    && yum install -y epel-release \
    && yum install -y nodejs npm git java-1.8.0-openjdk-headless zip unzip initscripts which \
    && yum clean all

RUN npm install -g yo bower gulp-cli karma

RUN curl -s "https://get.sdkman.io" | bash \
    && source "/root/.sdkman/bin/sdkman-init.sh" \
    && sdk i gradle

