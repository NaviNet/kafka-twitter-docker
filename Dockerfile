FROM ubuntu:trusty

MAINTAINER jwhite

RUN apt-get update; apt-get install -y openjdk-6-jdk wget unzip
RUN wget https://github.com/NaviNet/kafka-twitter-docker.git -O /tmp/kafka-twitter.zip
RUN unzip /tmp/kafka-twitter.zip -d /opt

CMD /opt/kafka-twitter-docker-master/gradlew run -Pargs="/opt/kafka-twitter-docker-master/conf/producer.conf"
