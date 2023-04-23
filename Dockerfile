FROM openjdk:18-oracle

ENV EULA="TRUE"
ENV VERSION="1.19.4"

WORKDIR /minecraft_server

EXPOSE 25565/tcp

# IPv6 támogatás hozzáadása
RUN echo 'precedence ::ffff:0:0/96 100' >> /etc/gai.conf
RUN sed -i 's/exec java -Xmx4G/exec java -Xmx4G -Djava.net.preferIPv4Stack=false -Djava.net.preferIPv6Addresses=true/g' /minecraft_server/start.sh

CMD ["/minecraft_server/start.sh"]
