FROM ubuntu:focal
WORKDIR /app
COPY . .
RUN apt update && apt -y install vim default-jdk wget systemd
RUN sh download.sh
RUN dpkg -i live_3.23.0-1_all.deb
RUN sh install.sh
CMD tail -f /var/log/faillog