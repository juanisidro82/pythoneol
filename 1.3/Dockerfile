FROM debian/eol:potato

COPY python-1.3.tar.gz .
#ADD https://legacy.python.org/download/releases/src/python-1.3.tar.gz .
COPY readline-2.0.tar.gz .
#ADD https://ftp.gnu.org/gnu/readline/readline-2.0.tar.gz . 
COPY compile-python-1.3.sh .
#ADD https://raw.githubusercontent.com/juanisidro82/pythoneol/main/1.2/compile-python-1.2.sh .

RUN chmod +x compile-python-1.3.sh
RUN ./compile-python-1.3.sh
RUN rm compile-python-1.3.sh
