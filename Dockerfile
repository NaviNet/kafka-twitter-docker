FROM ubuntu:trusty

MAINTAINER jwhite

RUN apt-get update; apt-get install -y openjdk-6-jdk wget unzip
RUN wget https://github.com/NaviNet/kafka-twitter-docker/archive/master.zip -O /tmp/kafka-twitter-docker-master.zip
RUN unzip /tmp/kafka-twitter-docker-master.zip -d /opt

CMD /opt/kafka-twitter-docker-master/start.sh
