FROM adobecoldfusion/fortuna

RUN apt-get update
RUN apt-get install vim --yes

COPY ./root_home/.bashrc /root/.bashrc
COPY ./root_home/.vimrc /root/.vimrc

COPY ./lib/mysql-connector-java-8.0.28.jar /opt/coldfusion/cfusion/lib/mysql-connector-java-8.0.28.jar

WORKDIR  /app

RUN /opt/coldfusion/cfusion/bin/cfpm.sh install debugger

EXPOSE 8523
