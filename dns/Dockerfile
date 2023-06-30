FROM alpine:latest

# Install bind and OpenRC
RUN apk add --no-cache bind openrc

# Create the /run/openrc directory
RUN mkdir -p /run/openrc

# Create the softlevel file
RUN touch /run/openrc/softlevel

# Update the named service runlevel
RUN rc-update add named default

# Start OpenRC services
CMD ["/sbin/init"]
