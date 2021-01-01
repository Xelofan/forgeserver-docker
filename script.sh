#!/bin/bash

FORGE_JAR="forge-${VERSION}-${FORGE_VERSION}.jar"
FORGE_URL="http://files.minecraftforge.net/maven/net/minecraftforge/forge/${VERSION}-${FORGE_VERSION}/forge-${VERSION}-${FORGE_VERSION}-installer.jar"

echo ${FORGE_JAR}

cd /forgeserver
if [ ! -f ${FORGE_JAR} ]
  then
    rm -rf /tmp/downloadedfiles
    cd /tmp/serverfiles
    wget ${FORGE_URL} -O serverInstaller.jar
    mkdir /tmp/downloadedfiles
    mv serverInstaller.jar /tmp/downloadedfiles
    cd /tmp/downloadedfiles
    java -jar serverInstaller.jar --installServer
    rm serverInstaller.jar
    mv * /forgeserver/
    cd /forgeserver
fi
if [ $EULA = "true" ]
  then
    echo eula=true > eula.txt
fi

java -Xms${MIN_RAM} -Xmx${RAM} ${JAVA_OPTS} -jar ${FORGE_JAR} nogui
