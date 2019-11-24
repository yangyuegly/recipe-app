From python:3.7-alpine 
MAINTAINER yangyuegly
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt


#create a folder on the docker image 
RUN mkdir /app
#change the working directory in doker image to that folder
WORKDIR /app
#copy everything form the local folder to the docker image folder 
COPY ./app /app 


#root user 
RUN adduser -D user 
USER user 