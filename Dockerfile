FROM debian:jessie

MAINTAINER Robert Gering "http://robertgering.de"

RUN echo "deb http://deb.torproject.org/torproject.org trusty main" >> /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv 886DDD89
RUN gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

RUN apt-get update -qq && apt-get install -y deb.torproject.org-keyring tor

# Add custom configs
ADD ./tor/ /etc/tor/

# Ports
EXPOSE 9050
EXPOSE 9053

CMD ["/usr/sbin/tor"]

