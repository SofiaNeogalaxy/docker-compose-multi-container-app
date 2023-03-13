FROM remote-host
COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                          \
  yum -y install nginx openssl --enablerepo=nginx                          && \
  yum install epel-release -y                                                
RUN yum -y install php php-mysqlnd php-bcmath php-cli php-common php-gd php-intl php-json php-ldap php-mbstring \
    php-pdo php-pear php-soap php-xml php-xmlrpc php-pecl-zip &&\
    yum clean all

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh