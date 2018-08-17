FROM alpine:latest

COPY entry /entry

RUN apk add --no-cache tor \
    && chmod +x /entry

EXPOSE 9050

ENTRYPOINT ["/entry"]

CMD ["/usr/sbin/tor", "-f", "/etc/torrc"]
