FROM centos:7
WORKDIR /usr/local
ADD mycat-server-1.5.tar.gz /usr/local/
#ADD mysql.tar.gz /user/local
COPY mycat/startup.sh /usr/local/startup.sh
#COPY mycat/mysql/bin/startup.sh /usr/local/mysql/bin/startup.sh

RUN yum install -y libaio
RUN useradd mysql

CMD /usr/local/startup.sh
EXPOSE 8066 9066

