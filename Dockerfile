FROM python:3-slim
Maintainer sathyamusanipalli.reddy@gmail.com
RUN mkdir /home/sample
COPY prime.py /home/sample
RUN      apt-get update \
         && apt-get install -y python-pip \
         && pip install --upgrade pip 
RUN      apt-get -y install python3-bs4 
         
RUN      apt-get -y install python3-requests 
 CMD python /home/sample/prime.py