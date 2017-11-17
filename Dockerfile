FROM alpine
RUN apk add --no-cache --update bash \
curl \
netcat-openbsd \
nmap-nping \
nmap bind-tools \
python3 \
ca-certificates \
&& pip3 install --upgrade pip \
&& pip3 install httpie httpie-unixsocket \
httping \
&& rm -rf /var/cache/apk/*
