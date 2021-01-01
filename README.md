```
docker run
    -p 25565:25565 \
    -v <host_folder>:/forgeserver \
    -e VERSION="1.16.4" \
    -e FORGE_VERSION="35.1.28" \
    -e MIN_RAM="512M" \
    -e RAM="1G" \
    -e JAVA_ARGS="" \
    -e EULA="true" #optional
    na ez még nem jó
```
