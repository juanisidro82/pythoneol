FROM debian/eol:potato

COPY python-1.2.tar.gz .
COPY readline-2.0.tar.gz .
COPY compile-python-1.2.sh . 

RUN chmod +x compile-python-1.2.sh
RUN ./compile-python-1.2.sh
RUN rm compile-python-1.2.sh
