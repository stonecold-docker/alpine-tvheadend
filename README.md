# alpine-tvheadend

#### [alpine-x64-tvheadend](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-tvheadend/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpinex64/alpine-x64-tvheadend/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpinex64/alpine-x64-tvheadend/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpinex64/alpine-x64-tvheadend/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinex64/alpine-x64-tvheadend)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinex64/alpine-x64-tvheadend)
#### [alpine-aarch64-tvheadend](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-tvheadend/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpineaarch64/alpine-aarch64-tvheadend/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpineaarch64/alpine-aarch64-tvheadend/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpineaarch64/alpine-aarch64-tvheadend/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpineaarch64/alpine-aarch64-tvheadend)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpineaarch64/alpine-aarch64-tvheadend)
#### [alpine-armhf-tvheadend](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-tvheadend/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpinearmhf/alpine-armhf-tvheadend/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpinearmhf/alpine-armhf-tvheadend/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpinearmhf/alpine-armhf-tvheadend/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinearmhf/alpine-armhf-tvheadend)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinearmhf/alpine-armhf-tvheadend)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64,aarch64,armhf
* Appplication : [Tvheadend](https://tvheadend.org/)
    - Tvheadend is a TV streaming server and recorder for Linux, FreeBSD and Android supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, ISDB-T, IPTV, SAT\>IP and HDHomeRun as input sources. Tvheadend offers the HTTP (VLC, MPlayer), HTSP (Kodi, Movian) and SAT\>IP streaming.



----------------------------------------
#### Run

```sh
docker run -d \
           --net=host \
           --device=/dev/dvb \
           -p 9981:9981/tcp \
           -p 9982:9982/tcp \
           -p 9983:9983/tcp \
           -v /conf.d:/conf.d \
           forumi0721alpine[ARCH]/alpine-[ARCH]-tvheadend:latest
```



----------------------------------------
#### Usage

* URL : [http://localhost:9981/](http://localhost:9981/)
    - Default username/password : forumi0721/passwd
    - If you want to convert mp4, you need to add post-processing  */usr/local/bin/convertvideo %f*



----------------------------------------
#### Docker Options

| Option             | Description                                      |
|--------------------|--------------------------------------------------|
| --net=host         | for IPTV, SAT\>IP and HDHomeRun                  |
| --device=/dev/dvb  | for passing through DVB-cards                    |


#### Ports

| Port               | Description                                      |
|--------------------|--------------------------------------------------|
| 9981/tcp           | HTTP port                                        |
| 9982/tcp           | HTSP port                                        |
| 9983/tcp           | xmltv relay port                                 |


#### Volumes

| Volume             | Description                                      |
|--------------------|--------------------------------------------------|
| /conf.d            | Persistent data                                  |


#### Environment Variables

| ENV                | Description                                      |
|--------------------|--------------------------------------------------|
| -                  | -                                                |

