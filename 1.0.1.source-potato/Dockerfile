FROM debian/eol:potato

ADD https://legacy.python.org/download/releases/src/python1.0.1.tar.gz .

RUN set -eux; \ 
    apt-get update; apt-get -y install make libc6-dev libreadline4-dev \
    libgdbmg1-dev gcc; rm -rf /var/lib/apt/lists/*;\
    tar -xvvzf python1.0.1.tar.gz; rm python1.0.1.tar.gz

