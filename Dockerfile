FROM openjdk:8-jre-alpine

ENV EULA="TRUE"
ENV VERSION="1.19.4"

WORKDIR /minecraft_server

VOLUME ["/minecraft_server"]

EXPOSE 25565/tcp

# CMD ["java", "-Xmx4G", "-Xms4G", "-jar", "/minecraft_server/server.jar", "nogui"]

RUN echo "#!/bin/bash" > /usr/local/bin/idling.sh
RUN echo "sleep 1000s" >> /usr/local/bin/idling.sh
RUN chmod +x /usr/local/bin/idling.sh

CMD ["/usr/local/bin/idling.sh"]