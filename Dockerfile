FROM ubuntu
RUN apt-get update && apt-get install -y \
    git \
    dh-make \
    dh-autoreconf \
    bzr-builddeb \
    pbuilder \
    ubuntu-dev-tools \
    debootstrap \
    devscripts
RUN mkdir /root/.ssh && ssh-keyscan github.com >> /root/.ssh/known_hosts
RUN git clone https://github.com/kevinkreiser/ppa-libprime-server.git /ppa-libprime-server
WORKDIR /ppa-libprime-server
CMD bash build.sh
