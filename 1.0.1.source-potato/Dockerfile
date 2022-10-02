FROM debian/eol:potato

RUN apt-get update; apt-get -y install make libc6-dev libreadline4-dev \
    libgdbmg1-dev gcc; rm -rf /var/lib/apt/lists/*

ADD https://legacy.python.org/download/releases/src/python1.0.1.tar.gz .

RUN tar -xvvzf python1.0.1.tar.gz 

