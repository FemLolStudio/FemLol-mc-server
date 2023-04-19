FROM openjdk:8-jre-alpine

ENV EULA="TRUE"
ENV VERSION="1.19.4"

WORKDIR /minecraft_server

VOLUME ["/minecraft_server"]

EXPOSE 25565/tcp

# CMD ["java", "-Xmx4G", "-Xms4G", "-jar", "/minecraft_server/server.jar", "nogui"]

RUN echo "#!/bin/bash" > idling.sh
RUN echo "sleep 10s" >> idling.sh
RUN chmod +x idling.sh

CMD ["idling.sh"]