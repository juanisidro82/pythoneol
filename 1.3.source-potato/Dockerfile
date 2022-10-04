FROM debian/eol:potato

ADD https://legacy.python.org/download/releases/src/python-1.3.tar.gz .
ADD https://ftp.gnu.org/gnu/readline/readline-2.0.tar.gz .

RUN set -eux; \
    apt-get update; apt-get -y install make libc6-dev libreadline4-dev \
    libgdbmg1-dev gcc; rm -rf /var/lib/apt/lists/*; \
    tar -xvvzf python-1.3.tar.gz; tar -xvvzf readline-2.0.tar.gz; \
    rm python-1.3.tar.gz; rm readline-2.0.tar.gz
