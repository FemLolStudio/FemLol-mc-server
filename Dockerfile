FROM openjdk:8-jre-alpine

ENV EULA="TRUE"
ENV VERSION="1.17.1"

WORKDIR /minecraft_server

COPY ./minecraft_server/* ./

VOLUME ["/minecraft_server"]

EXPOSE 25565/tcp

CMD ["java", "-Xmx4096M", "-Xms4096M", "-jar", "server.jar", "nogui"]