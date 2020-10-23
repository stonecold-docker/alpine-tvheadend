ARG BUILD_ARCH=aarch64

FROM forumi0721/alpine-aarch64-base:latest

LABEL maintainer="forumi0721@gmail.com"

COPY local/. /usr/local/

RUN ["docker-build-start"]

RUN ["docker-init"]

RUN ["docker-build-end"]

ENTRYPOINT ["docker-run"]

EXPOSE 9981/tcp 9982/tcp 9983/tcp

VOLUME /conf.d

#ARG BUILD_ARCH=x64
#
#FROM forumi0721alpinex64build/alpine-x64-tvheadend-builder:latest as builder
#
#FROM forumi0721/alpine-${BUILD_ARCH}-base:latest
#
#LABEL maintainer="forumi0721@gmail.com"
#
#COPY --from=builder /output /
#
#COPY local/. /usr/local/
#
##RUN ["docker-build-start"]
#
#RUN ["docker-init"]
#
##RUN ["docker-build-end"]
#
#ENTRYPOINT ["docker-run"]
#
#EXPOSE 9981/tcp 9982/tcp 9983/tcp
#
#VOLUME /conf.d
#
