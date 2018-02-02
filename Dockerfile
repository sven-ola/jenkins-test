FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
    	awscli \
		gcc-arm-linux-gnueabihf \
		openjdk-8-jdk && \
	apt-get clean

RUN aws s3 cp /tmp n4-cd-n4os-storage/linux_build.tar.gz && \
	mkdir -p /opt/sysroot && \
	tar --directory=/opt/sysroot -xvf /tmp/linux_build.tar.gz && \
	rm -f /tmp/linux_build.tar.gz
