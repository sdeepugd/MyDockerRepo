FROM centos:latest
MAINTAINER Deepak <deepak.srinivasan@zohocorp.com>
RUN export http_proxy=http://192.168.100.100:3128 && export https_proxy=http://192.168.100.100:3128 && yum -y install wget &&    yum -y install unzip && yum -y install bc && yum -y install glibc.i686 && yum -y install net-tools && yum install -y psmisc &&   yum install -y vim
EXPOSE 9090/tcp
EXPOSE 9443/tcp
