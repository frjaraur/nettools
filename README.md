# nettools -- https://hub.docker.com/r/frjaraur/nettools/

## Image for testing and debugging Network issues with Web Servers.

Tools Available in Small Version:
 - curl
 - ab
 - netcat
 - nping
 - nslookup
 - dig
 - host
 - http (httping)
 
Tools Available in Jmeter, K6 or All:
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
~~~

## Notes:
 - It doesn't need root, it uses user nettools with uid 65500. If you need to deploy ports under 1024, you will need to change container execution user.
