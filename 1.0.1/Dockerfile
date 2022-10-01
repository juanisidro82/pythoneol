FROM juanisidro82/debianeol::potato

ADD https://legacy.python.org/download/releases/src/python1.0.1.tar.gz .
ADD https://raw.githubusercontent.com/juanisidro82/pythoneol/main/1.0.1/compile-python-1.0.1.sh .

RUN chmod +x compile-python-1.0.1.sh
RUN ./compile-python-1.0.1.sh
RUN rm compile-python-1.0.1.sh
