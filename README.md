# alpine-tvheadend
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721/alpine-tvheadend)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721/alpine-tvheadend)



----------------------------------------
### x64
![Docker Image Size](https://img.shields.io/docker/image-size/forumi0721/alpine-tvheadend/x64)
### aarch64
![Docker Image Size](https://img.shields.io/docker/image-size/forumi0721/alpine-tvheadend/aarch64)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64,aarch64
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
           forumi0721/alpine-tvheadend:[ARCH_TAG]
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

