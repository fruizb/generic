FROM centos:8

ARG URL JDK_VERSION

LABEL Autor="FACUNDO RUIZ"

WORKDIR /opt

RUN yum update -y && yum install wget $JDK_VERSION vim -y && \
mkdir /opt/server && wget $URL --progress=bar:force -O /tmp/server.tar.gz && \
tar zxvf /tmp/server.tar.gz -C /opt/server --strip-components 1 && rm -rf /tmp/server.tar.gz && \
yum autoremove -y && yum clean all
