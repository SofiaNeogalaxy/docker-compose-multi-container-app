FROM jenkins/jenkins

USER root

RUN apt-get update && \
   apt-get install -y gcc python2-dev libkrb5-dev && \
   apt-get install python3-pip -y && \
   pip3 install --upgrade pip && \
   pip3 install ansible

USER jenkins