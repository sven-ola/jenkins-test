FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
    	awscli \
    	make \
		gcc-arm-linux-gnueabihf \
		openjdk-8-jdk && \
	apt-get clean

ARG AWS_ACCESS_KEY_ID=AKIAIDKKDPCIU3OPGHCA
ARG AWS_SECRET_ACCESS_KEY=

RUN set -x && \
	id && \
	aws s3 cp s3://n4-cd-n4os-storage/linux_build.tar.gz /tmp/ && \
	mkdir -p /opt/sysroot && \
	tar --directory=/opt/sysroot -xvf /tmp/linux_build.tar.gz && \
	rm -f /tmp/linux_build.tar.gz
