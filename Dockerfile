FROM debian:stretch-slim

COPY entry /entry

RUN apt-get update \
	&& apt install -y --no-install-recommends tor \
	&& chmod +x /entry


EXPOSE 9050

ENTRYPOINT ["/entry"]

CMD ["/usr/sbin/tor", "-f", "/etc/torrc"]
