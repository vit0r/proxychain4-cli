FROM kalilinux/kali-rolling

RUN apt update 

RUN apt install telnet curl wget proxychains4 zsh python3-dev python3-requests jq -y

ADD ./proxychains.conf ./proxychains.conf

ENTRYPOINT [ "proxychains4","-q", "-f", "/proxychains.conf" ]