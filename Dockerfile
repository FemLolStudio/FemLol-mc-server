FROM openjdk:18-oracle

ENV EULA="TRUE"
ENV VERSION="1.19.4"

 WORKDIR /minecraft_server

EXPOSE 80/tcp

 CMD ["java", "-Xmx4G", "-Xms4G", "-jar", "/minecraft_server/server.jar", "nogui"]
