FROM openjdk:8-jdk-alpine

RUN apk update && apk add supervisor
RUN addgroup -S app && adduser -S -G app app
RUN mkdir -m 0755 -p /usr/local/app/bin
RUN chown -R app:app /usr/local/app

ARG JAR_FILE
ARG NAME

EXPOSE 8090

ENTRYPOINT ["ls"]
