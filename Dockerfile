# Kali Linux Docker Image
# Docker image with a couple of tools
FROM kalilinux/kali-rolling
WORKDIR /root
RUN echo "deb http://kali.download/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get -y clean && apt-get -y install nano curl wget netcat net-tools build-essential iputils-ping pciutils bash-completion
COPY packages.txt /root/
RUN cat /root/packages.txt | xargs apt-get -y install
RUN rm -rf /root/packages.txt
RUN printf "alias ll='ls $LS_OPTIONS -l'\nalias l='ls $LS_OPTIONS -lA'\n\n# enable bash completion in interactive shells\nif [ -f /etc/bash_completion ] && ! shopt -oq posix; then\n    . /etc/bash_completion\nfi\n" > /root/.bashrc
CMD ["/bin/bash"]
