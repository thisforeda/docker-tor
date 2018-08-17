FROM alpine:latest

RUN apk add --no-cache tor

EXPOSE 9050

ENTRYPOINT ["/entry"]

CMD ["/usr/sbin/tor", "-f", "/etc/torrc"]
