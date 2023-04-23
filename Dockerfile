FROM openjdk:18-oracle

ENV EULA="TRUE"
ENV VERSION="1.19.4"

 WORKDIR /minecraft_server

EXPOSE 81/tcp

RUN echo 'precedence ::ffff:0:0/96 100' >> /etc/gai.conf

 CMD ["java", "-Xmx4G", "-Xms4G", "-Djava.net.preferIPv4Stack=false", "-Djava.net.preferIPv6Addresses=true", "-jar", "/minecraft_server/server.jar", "nogui"]
