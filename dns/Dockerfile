FROM alpine:latest

# Install bind and OpenRC
RUN apk add --no-cache bind openrc


# Update the named service runlevel
RUN rc-update add named default
