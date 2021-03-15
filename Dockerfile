FROM alpine:3.11.3
LABEL MAINTAINER "Mohammad Hanif"
RUN apk update
RUN apk add openntpd ca-certificates
RUN mkdir -m 1777 /var/empty/tmp
ADD ./entrypoint.sh ./entrypoint.sh
RUN chmod 755 ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
