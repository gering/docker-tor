# docker-tor
Docker Tor Socks Proxy

Simple container that sets up a tor proxy via socks.

## Running

    $ docker run -d -p 9050:9050 -i gering/tor

`-d` run in detached mode

`-p` expose container port `[public-port]:[container-port]`
> torrc sets the container ports 9050

> If you do not explicitly set a public port, a random open port will be used because the ports are exposed in the Dockerfile


### Test [local](https://docs.docker.com/installation/)

    $ curl -x http://127.0.0.1:8118 -L http://echoip.com/

### Test with [boot2docker](https://docs.docker.com/installation/mac/)

    $ curl -x http://$(boot2docker ip 2>/dev/null):8118  -L http://echoip.com/

You can now connect to the http proxy via port 8118.

## License

[See LICENSE](/LICENSE)
