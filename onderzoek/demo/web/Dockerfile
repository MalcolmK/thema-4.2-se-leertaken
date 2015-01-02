#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx
  # echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \

# Add HHVM repository
RUN \
	wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add - && \
	echo deb http://dl.hhvm.com/ubuntu trusty main | tee /etc/apt/sources.list.d/hhvm.list && \
	apt-get update && \
	apt-get install -y hhvm && \
	/usr/share/hhvm/install_fastcgi.sh && \
	update-rc.d hhvm defaults && \
	echo "hhvm.resource_limit.socket_default_timeout = 30" >> /etc/hhvm/php.ini && \
	echo "hhvm.http.slow_query_threshold = 30000" >> /etc/hhvm/php.ini && \
	/usr/bin/update-alternatives --install /usr/bin/php php /usr/bin/hhvm 40

# Add PHP MySQL driver.
RUN apt-get install -y php5-mysql

# Install composer.
RUN \
	wget https://getcomposer.org/installer && \
	hhvm installer && \
	mv composer.phar /usr/local/bin/composer && \
	rm installer

# Install PHPUnit.
RUN \
	wget https://phar.phpunit.de/phpunit.phar && \
	chmod +x phpunit.phar && \
	mv phpunit.phar /usr/local/bin/phpunit

# Install ssh
RUN apt-get install -y openssh-server && \
    mkdir /var/run/sshd && \
    echo 'root:screencast' | chpasswd && \
    sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile


# Add script to start services.
ADD service/start.sh /var/www/
RUN chmod +x /var/www/start.sh

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["/var/www/start.sh"]

# Expose ports.
EXPOSE 22
EXPOSE 80
EXPOSE 443
