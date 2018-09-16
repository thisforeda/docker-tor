FROM alpine:latest

COPY entry /entry

RUN apk add --no-cache tor \
    && adduser -D -H -s /bin/false tor \
    && touch /etc/torrc \
    && chown tor: /etc/torrc \
    && chmod +x /entry

USER tor

EXPOSE 9050

ENTRYPOINT ["/entry"]

CMD ["/usr/bin/tor", "-f", "/etc/torrc"]
