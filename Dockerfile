FROM forumi0721/alpine-buildbase:latest AS builder

LABEL maintainer="forumi0721@gmail.com"

COPY local/bin/docker-build-tvheadend /usr/local/bin/docker-build-tvheadend

RUN ["docker-build-tvheadend"]



FROM forumi0721/alpine-base:latest

LABEL maintainer="forumi0721@gmail.com"

COPY --from=builder /output /

COPY local/. /usr/local/

RUN ["docker-build"]

ENTRYPOINT ["docker-run"]

EXPOSE 9981/tcp 9982/tcp 9983/tcp

VOLUME /conf.d

