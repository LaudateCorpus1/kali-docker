FROM kalilinux/kali-rolling

COPY packages.txt /tmp/

RUN echo "deb http://kali.download/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
   apt-get -y update && apt-get -y dist-upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y && \
   cat /tmp/packages.txt | xargs apt-get -y install && \
   apt-get -y autoremove && apt-get -y clean && \
   rm -rf /tmp/packages.txt

CMD ["/bin/bash"]
