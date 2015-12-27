FROM django:latest


RUN apt-get update && apt-get install -y openssh-server && apt-get install -y man && apt-get install -y curl && apt-get install -y zlib1g-dev  && apt-get install -y libreadline-dev && apt-get install -y libyaml-dev && apt-get install -y libxml2-dev  && apt-get install -y libxslt1-dev && apt-get install -y libcurl4-openssl-dev && apt-get install -y libffi-dev && apt-get install -y exuberant-ctags && apt-get install -y libmysqlclient-dev && apt-get install -y locate && unset http_proxy && unset https_proxy

EXPOSE 22
EXPOSE 8000
EXPOSE 8001
EXPOSE 9001
EXPOSE 9000
EXPOSE 8009

