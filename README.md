```
docker run \
    -p 25565:25565 \
    -v <host_folder_or_volume>:/forgeserver \
    -e VERSION="1.16.4" \
    -e FORGE_VERSION="35.1.28" \
    -e MIN_RAM="512M" \
    -e RAM="1G" \
    -e JAVA_ARGS="" \
    -e EULA="true" \
    -d \
    xelofan/forgeserver-docker

All environment variables are optional, the values specified here are the defaults values.
```
