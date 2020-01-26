# Kali Linux Docker Image
# Docker image with a couple of tools
FROM kalilinux/kali-rolling
RUN echo "deb http://kali.download/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get -y clean
RUN apt-get -y install nano git curl wget netcat net-tools build-essential
COPY packages.txt /root/
RUN cat /root/packages.txt | xargs apt-get -y install
RUN rm -rf /root/packages.txt
WORKDIR /root
CMD ["/bin/bash"]
