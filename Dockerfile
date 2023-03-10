 FROM  centos:7
 ADD source destRUN yum install -y httpd \
 zip\
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/koppee.zip  /var/www/html/
 WORKDIR /var/www/html/
 RUN unzip koppee.zip
 RUN cp -rvf coffee-shop-html-template/* .
 RUN rm -rf koppee.zip
 CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80 
