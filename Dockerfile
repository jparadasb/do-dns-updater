FROM alpine:latest
RUN apk add --no-cache jq curl bash bind-tools
WORKDIR /app
COPY ./bin/dns-updater .
CMD ["./dns-updater"]
