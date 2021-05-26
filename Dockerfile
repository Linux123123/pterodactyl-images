FROM        node:lts-buster-slim

LABEL       author="Linux123123" maintainer="linas.alexx@gmail.com"

RUN         apt-get update && apt-get -y install ffmpeg git python3 build-essential
RUN         useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
