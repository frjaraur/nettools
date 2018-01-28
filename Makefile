small:
	docker build -f Dockerfile.small -t frjaraur/nettools:small .
k6:
	docker build -f Dockerfile.k6 -t frjaraur/nettools:k6 .
jmeter:
	docker build -f Dockerfile.jmeter -t frjaraur/nettools:jmeter .
everything:
	docker build -f Dockerfile.big -t frjaraur/nettools:big .
all:
	make small k6 jmeter everything
