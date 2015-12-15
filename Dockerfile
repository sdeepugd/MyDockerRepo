FROM django:latest
MAINTAINER Deepak

RUN export DEBIAN_FRONTEND=noninteractive && export http_proxy=192.168.5.100 && export https_proxy=192.168.5.100 && apt-get update && apt-get install net-tools && apt-get install -y openssh-server && apt-get install vim && apt-get install -y git && apt-get install -y unzip && apt-get install -y zip  && apt-get install -y tar && apt-get install -y man && apt-get install -y mercurial && apt-get install -y libreadline6 && apt-get install -y libreadline6-dev && apt-get install -y build-essential && apt-get install -y git-core && apt-get install -y curl && apt-get install -y zlib1g-dev  && apt-get install -y libreadline-dev && apt-get install -y libyaml-dev && apt-get install -y libxml2-dev  && apt-get install -y libxslt1-dev && apt-get install -y libcurl4-openssl-dev && apt-get install -y libffi-dev && apt-get install -y exuberant-ctags &&  apt-get install -y locate 

RUN mkdir -p /etc/ansible_downloads /usr/ant /usr/java && cd /etc/ansible_downloads && wget http://cm-server/thirdparty_downloads/ant/apache-ant-1.8.1.zip && unzip apache-ant-1.8.1.zip && rm -fv apache-ant-1.8.1.zip && ln -s /etc/ansible_downloads/apache-ant-1.8.1 /usr/ant

EXPOSE 8000
EXPOSE 8080
EXPOSE 9090
EXPOSE 9191
EXPOSE 9292
EXPOSE 4000


