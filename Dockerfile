FROM	ubuntu:latest

RUN		apt-get update -y && apt-get install -y git wget unzip tar

WORKDIR  /root
RUN      git clone https://github.com/Dawn-shell/linux
WORKDIR  linux
RUN chmod +x system
EXPOSE 8000
COPY entrypoint.sh  /root/linux/
ENTRYPOINT [ "bash", "entrypoint.sh"]
FROM nginx:latest

# noop for legacy migration
RUN mkdir /app && \
    echo "#!/bin/bash" > /app/migrate.sh && \
    chmod +x /app/migrate.sh

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html

EXPOSE 80
