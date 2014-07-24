FROM ubuntu:trusty
MAINTAINER Viktor Miroshnikov <viktor@flowhealth.com>
RUN apt-get -q -y update
RUN apt-get -q -y install curl git python-pip nginx
RUN pip install s3cmd
ADD s3cmd.cfg /s3cmd.cfg
ADD localhost.nginx.conf /etc/nginx/sites-enabled/htmlserve
EXPOSE 8888

CMD while true; sleep 5; done
