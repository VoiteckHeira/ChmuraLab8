FROM alpine

RUN mkdir /logi

COPY ./pluto.sh ./

RUN chmod +x /pluto.sh

RUN apk add --no-cache curl

VOLUME /logi

CMD ["/pluto.sh"]

HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl -f http://localhost/ || exit 1