FROM debian/eol:potato

ADD https://legacy.python.org/download/releases/src/python-1.4.tar.gz .
ADD https://ftp.gnu.org/gnu/readline/readline-2.0.tar.gz . 
COPY compile-python-1.4.sh .
COPY parches parches

RUN chmod +x compile-python-1.4.sh
RUN ./compile-python-1.4.sh
RUN rm compile-python-1.4.sh
