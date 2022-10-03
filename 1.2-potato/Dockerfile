#Dockerfile to generate a docker image with version 1.2 of python for the curious.
FROM juanisidro82/pythoneol:1.2.source-potato

RUN set -eux; \
    cd readline-2.0; ./configure; make; cd ../Python-1.2; \
#dbm module support
    sed -e "s/#dbm dbmmodule.c/dbm dbmmodule.c/g" Modules/Setup.in > Modules/Setup2.in; \
    sed -e  "s/ndbm.h/gdbm-ndbm.h/g" Modules/dbmmodule.c > Modules/dbmmodule2.c; \
    rm Modules/Setup.in && rm Modules/dbmmodule.c; \ 
    mv Modules/Setup2.in Modules/Setup.in; \
    mv Modules/dbmmodule2.c Modules/dbmmodule.c; \
# compilation and installation
    ./configure --with-readline="/readline-2.0" --with-libc="-lgdbm -lcrypt"; \
    make && make install; make libinstall;  cd ..; \ 
# removal of files used for compilation
    rm -rf readline-2.0; rm -rf Python-1.2 

