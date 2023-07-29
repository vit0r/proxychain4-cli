FROM kalilinux/kali-rolling

RUN apt update 
RUN apt install tor telnet curl wget proxychains4 zsh python3-dev python3-requests jq -y
RUN apt clean -y
RUN curl -s "https://raw.githubusercontent.com/liamg/scout/master/scripts/install.sh" | bash

ADD ./proxychains.conf ./proxychains.conf
ADD ./torrc ./torrc
ADD ./entrypoint.sh ./entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]