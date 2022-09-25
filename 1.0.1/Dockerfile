FROM debian/eol:potato

ADD https://legacy.python.org/download/releases/src/python1.0.1.tar.gz .
COPY compile-python-1.0.1.sh .

RUN ./compile-python-1.0.1.sh
RUN rm compile-python-1.0.1.sh
