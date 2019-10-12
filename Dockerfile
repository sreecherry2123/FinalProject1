FROM ubuntu:16.04

LABEL company="minds" \
      maintainer="Charishma" \
      Location="Banglore" \
      Version="0.0.1"

RUN apt-get update -y
# httpd is the package name for apache in Linux
# apache2 is the package name for apache in Ubuntu
RUN apt-get install apache2 -y
#My Added Code
RUN apt-get install wget -y
RUN apt-get install unzip -y

# Copy the static website to Apache deployment directory(/var/www/html)
WORKDIR /var/www/html
RUN wget 

ADD demo-app .

EXPOSE 80
# CMD is runtime instruction, is excuted when we run container
ENTRYPOINT ["apachectl","-D", "FOREGROUND"]
