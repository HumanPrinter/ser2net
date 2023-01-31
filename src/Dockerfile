FROM alpine:3.17.1

# hadolint ignore=DL3018
RUN apk add --no-cache \
        ser2net

COPY run-ser2net.sh /

ENTRYPOINT ["sh", "/run-ser2net.sh"]
