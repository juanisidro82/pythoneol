FROM debian/eol:potato

ADD https://legacy.python.org/download/releases/src/python1.1.tar.gz .
ADD https://ftp.gnu.org/gnu/readline/readline-2.0.tar.gz .
ADD https://raw.githubusercontent.com/juanisidro82/pythoneol/main/1.1/compile-python-1.1.sh . 

RUN chmod +x compile-python-1.1.sh
RUN ./compile-python-1.1.sh
RUN rm compile-python-1.1.sh
