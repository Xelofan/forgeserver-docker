# forgeserver-docker

To run the image use the example below:
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

```
All environment variables are optional, the values specified here are the defaults values.

**Make sure to not give more RAM than you actually have.**
## Environment variables
| Name | Description | Example |
| --- | --- | ---
| VERSION | Minecraft version | 1.12.2 |
| FORGE_VERSION | Forge version | 14.23.5.2854 |
| MIN_RAM | Minimum server RAM usage | 1G / 1024M |
| RAM | Maximum server RAM usage | 4G / 4096M |
| JAVA_ARGS | Additional java arguments | --- |
| EULA | Minecraft EULA, leave it *true* | true / false |
## Installing mods
Create a **mods** in the host folder and place your mods in that.
