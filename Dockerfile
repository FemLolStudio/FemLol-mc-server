FROM openjdk:21-oracle

ENV EULA="TRUE"
ENV VERSION="1.20.4"

 WORKDIR /minecraft_server

EXPOSE 25565/tcp

 CMD ["java", "-Xmx4G", "-Xms256M", "-jar", "/minecraft_server/server.jar", "nogui"]