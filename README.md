# nettools -- https://hub.docker.com/r/frjaraur/nettools/

## Image for testing and debugging Network issues with Web Servers.

4 Tags
 - frjaraur/nettools:small
 - frjaraur/nettools:jmeter
 - frjaraur/nettools:k6
 - frjaraur/nettools:everything

Tools Available in Small Version:
 - curl
 - ab
 - netcat
 - nping
 - nslookup
 - dig
 - host
 - http (httping)
 - httpstat (https://github.com/reorx/httpstat)
 
Tools Available in Jmeter, K6 or Everything:
 - jmeter (http://jmeter.apache.org)
 - k6 (https://k6.io/ built from loadimpact/k6 image)
 - both

## Example Usage:
~~~

$  docker run --rm  frjaraur/nettools:small \
ab -n 1 -v 2 -k http://www.example.com/

$ docker run --rm -v /tmp/abdata:/tmp frjaraur/nettools:small \
ab -k -n1000 -c100 -H 'Accept-Encoding: gzip,deflate' \
-g /tmp/codegazers.csv https://www.codegazers.org/

$ docker run -ti --env HTTPSTAT_SHOW_SPEED=true frjaraur/nettools:small \
httpstat https://www.codegazers.org
~~~

## Notes:
 - It doesn't need root, it uses user nettools with uid 65500. If you need to deploy ports under 1024, you will need to change container execution user.
 For example, running traceroute may require open AF_INET socket. Simply run container as root user:
~~~

$ docker run --rm --user=root frjaraur/nettools:small \
traceroute www.google.com

~~~
