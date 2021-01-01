FROM openjdk:11.0-jre-slim

ENV VERSION="1.16.4" \
    FORGE_VERSION="35.1.28" \
    MIN_RAM="512M" \
    RAM="1G" \
    JAVA_ARGS="" \
    EULA="true"

RUN apt update
RUN apt install wget -y

RUN mkdir /forgeserver
WORKDIR /forgeserver

RUN mkdir /tmp/serverfiles
COPY script.sh /tmp/serverfiles/script.sh
CMD [ "sh", "/tmp/serverfiles/script.sh" ]

VOLUME [ "/forgeserver" ]
EXPOSE 25565
