FROM ubuntu:16.04
ENTRYPOINT ["testHTML-nginx"]
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' \
        >/usr/share/nginx/html/index.html
EXPOSE 80
COPY conf/nginx.conf /etc/nginx/nginx.conf

#################################
#FROM mysql
#    RUN apt-get install -y mysql
#EXPOSE 3306
#################################