FROM centos:7

MAINTAINER JUSTEP PaaS


WORKDIR /usr/local

ADD Java_1.7.0_60.tar.gz /usr/local/
ADD Mycat-server-1.5.1.tar.gz /usr/local/

COPY mycat/conf/* /usr/local/conf/
COPY mycat/startup.sh /usr/local/startup.sh

RUN find /usr/local -iname "*.sh" -exec chmod +x {} \;

ENV MYCAT_HOME /usr/local

EXPOSE 8066 9066

CMD /usr/local/startup.sh
