FROM alpine:3.15.1

# hadolint ignore=DL3018
RUN apk add --no-cache \
        ser2net

COPY run-ser2net.sh /

RUN chmod +x /run-ser2net.sh

ENTRYPOINT ["/run-ser2net.sh"]
