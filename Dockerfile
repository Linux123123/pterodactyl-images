FROM        node:lts-alpine

LABEL       author="Linux123123" maintainer="linas.alexx@gmail.com"

RUN         apk add --no-cache --update ffmpeg python3 git build-base \
    && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]