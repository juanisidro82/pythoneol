FROM debian/eol:potato

RUN apt-get update && apt-get -y install make libc6-dev libreadline4-dev \
    libgdbmg1-dev gcc && rm -rf /var/lib/apt/lists/*

ADD https://legacy.python.org/download/releases/src/python1.1.tar.gz .
ADD https://ftp.gnu.org/gnu/readline/readline-2.0.tar.gz .

RUN tar -xvvzf python1.1.tar.gz  \
    && tar -xvvzf readline-2.0.tar.gz

