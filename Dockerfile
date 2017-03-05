FROM docker:latest
MAINTAINER Kenney He<kenneyhe@gmail.com>

# Install Vagrant
RUN set -x && \
  VAGRANT_VERSION=1.8.4 && \
  apk add --no-cache bash rsync openssh && \
  wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb && \
  apk add --no-cache --virtual .vagrant dpkg tar && \
  dpkg -x vagrant_1.8.4_x86_64.deb / && \
  apk del .vagrant

RUN rm -f vagrant_1.8.4_x86_64.deb
