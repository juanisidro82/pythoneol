#Dockerfile to generate a docker image with version 1.0.1 of python for the curious.
FROM juanisidro82/pythoneol:1.0.1.source-potato

RUN set -eux; \
    cd python-1.0.1; \
#dbm module support
    sed -e "s/#dbm dbmmodule.o/dbm dbmmodule.o/g" Modules/Setup.in > Modules/Setup2.in;\
    sed -e "s/ndbm.h/gdbm-ndbm.h/g" Modules/dbmmodule.c > Modules/dbmmodule2.c;\
    rm Modules/Setup.in && rm Modules/dbmmodule.c;\ 
    mv Modules/Setup2.in Modules/Setup.in;\
    mv Modules/dbmmodule2.c Modules/dbmmodule.c; \
# compilation and installation
    ./configure --with-readline="/usr/include/readline" --with-libc=-lgdbm;\
    make && make install && make libinstall && cd ..;\ 
# removal of files used for compilation
    rm python1.0.1.tar.gz && rm -rf python-1.0.1 

