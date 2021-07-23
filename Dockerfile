FROM alpine:latest

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache dhcp

# Start DHCP server
CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/data/dhcpd.conf", "-lf", "/data/dhcpd.lease"]
