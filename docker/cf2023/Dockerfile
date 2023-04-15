FROM adobecoldfusion/fortuna

RUN apt-get update
RUN apt-get install vim --yes
RUN apt-get install gnupg ca-certificates openjdk-11-jdk --yes

COPY ./root_home/.bashrc /root/.bashrc
COPY ./root_home/.vimrc /root/.vimrc

COPY ./lib/mysql-connector-java-8.0.28.jar /opt/coldfusion/cfusion/lib/mysql-connector-java-8.0.28.jar

WORKDIR  /app

RUN /opt/coldfusion/cfusion/bin/cfpm.sh install debugger
RUN sed -i \
    "s/<var name='robust_enabled'><boolean value='[^']*'\/><\/var>/<var name='robust_enabled'><boolean value='true'\/><\/var>/g" \
    /opt/coldfusion/cfusion/lib/neo-debug.xml

COPY ./commandbox.properties /usr/local/bin/commandbox.properties

RUN curl -fsSl https://downloads.ortussolutions.com/debs/gpg | apt-key add -
RUN echo "deb https://downloads.ortussolutions.com/debs/noarch /" | tee -a /etc/apt/sources.list.d/commandbox.list
RUN apt-get update && apt-get install apt-transport-https commandbox --yes
RUN echo exit | box

EXPOSE 8523
