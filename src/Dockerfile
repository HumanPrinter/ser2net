FROM alpine:3.15.0

RUN apk add --no-cache \
        ser2net

CMD echo "Starting ser2net" && ser2net -v && ser2net -d -c /etc/ser2net.conf