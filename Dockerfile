FROM python:3-slim

Maintainer phanindrababu.avula@gmail.com

RUN mkdir /home/sample

COPY SecondProgram.py /home/sample

RUN      apt-get update \
         && apt-get install -y python-pip \
         && pip install --upgrade pip 

RUN      apt-get -y install python3-bs4 
         
RUN      apt-get -y install python3-requests 

CMD python /home/sample/SecondProgram.py