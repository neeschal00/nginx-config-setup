FROM alpine:latest
USER root
# Openrc is service manager; is the init system 
RUN apk add bind openrc 
RUN rc-update -u named