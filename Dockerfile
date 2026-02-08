FROM openjdk:25-ea

ENV EULA="TRUE"
ENV VERSION="1.21.10"
ENV JAVA_MAX_MEMORY=2G
ENV JAVA_MIN_MEMORY=256M

WORKDIR /minecraft_server

EXPOSE 25565/tcp

CMD java -Xmx${JAVA_MAX_MEMORY} -Xms${JAVA_MIN_MEMORY} "-Paper.IgnoreJavaVersion=true" -jar /minecraft_server/server.jar nogui