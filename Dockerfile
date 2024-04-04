FROM golang:1.22.2-bullseye

ARG BUILD_NAME

RUN mkdir /app
WORKDIR /app
COPY src/* /app/
RUN go build -o app .

ENTRYPOINT [ "./app" ]