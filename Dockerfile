FROM centos
MAINTAINER linuxhe <tinyshrimp@163.com>
RUN yum install -y nodejs
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
COPY shib /opt/shib
COPY start.sh /usr/local/bin/start.sh
RUN cd /opt/shib && cnpm install
RUN useradd shib
CMD ["start.sh"]
