FROM alpine

RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN echo "Europe/Paris" >  /etc/timezone

WORKDIR /home
ENV TZ=Europe/Paris

COPY script.sh .

CMD ["sh", "script.sh"]
#CMD ["ls"]
