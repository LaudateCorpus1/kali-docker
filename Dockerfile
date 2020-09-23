FROM kalilinux/kali

WORKDIR /root/

RUN echo "deb http://kali.download/kali kali-last-snapshot main contrib non-free" > /etc/apt/sources.list

RUN apt-get -y update && apt-get -y upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
   nano curl wget net-tools build-essential iputils-ping pciutils bash-completion && \
   apt-get autoremove -y && \
   apt-get clean -y

COPY packages.txt /root/
RUN cat /root/packages.txt | xargs apt-get -y install
RUN rm -rf /root/packages.txt

RUN printf "alias ll='ls $LS_OPTIONS -l'\nalias l='ls $LS_OPTIONS -lA'\n\n# enable bash completion in interactive shells\nif [ -f /etc/bash_completion ] && ! shopt -oq posix; then\n    . /etc/bash_completion\nfi\n" > /root/.bashrc

CMD ["/bin/bash"]
