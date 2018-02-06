small:
	docker build  --network host -f Dockerfile.small -t frjaraur/nettools:small .
k6:
	docker build --network host -f Dockerfile.k6 -t frjaraur/nettools:k6 .
jmeter:
	docker build  --network host -f Dockerfile.jmeter -t frjaraur/nettools:jmeter .
everything:
	docker build  --network host -f Dockerfile.everything -t frjaraur/nettools:everything .
all:
	make small k6 jmeter everything
