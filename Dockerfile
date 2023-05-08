FROM alpine

RUN apk update && apk add --no-cache curl 

RUN mkdir /logi

COPY ./pluto.sh ./

RUN chmod +x /pluto.sh

VOLUME /logi

HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl -f http://localhost/ || exit 1

CMD ["/pluto.sh"]

