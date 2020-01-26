FROM alpine

RUN apk add curl
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN echo "Europe/Paris" >  /etc/timezone

WORKDIR /home
ENV TZ=Europe/Paris

COPY script.sh .

ENV HOST=localhost
ENV PORT=8080

CMD sh ./script.sh $HOST $PORT
