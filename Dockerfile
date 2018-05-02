FROM debian:stretch

RUN \
	apt-get update -y && \
	apt-get install --no-install-recommends -y python2.7 python-dnspython python-m2crypto python-pygraphviz python-pip python-setuptools dns-root-data && \
	pip install dnsviz && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /root/.cache/pip
