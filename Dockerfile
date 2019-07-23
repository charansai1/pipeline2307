ARG codeversion="latest"
FROM ubuntu:$codeversion
run echo $codeversion
ARG licence_key="1234-789"
env ora_port=1521
LABEL MAINTAINER Sai Charan <sai.c.charan@oracle.com>
#RUN apt-get -y update
#run apt-get install -y curl apache2
run mkdir /code
COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
run echo $licence_key
workdir /code
#cmd apachectl -D FOREGROUND
cmd sh /code/Sample.sh
