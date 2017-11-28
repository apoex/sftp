FROM alpine:3.5

MAINTAINER Amir Mofasser (@amimof)

COPY sshd_config /etc/ssh/sshd_config
COPY server /

RUN apk add --no-cache --update openssh bash \
&&  mkdir -p /var/run/sshd \
&&  chmod +x /server

EXPOSE 22

CMD ["/server"]
