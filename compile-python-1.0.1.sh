apt-get update
apt-get -y install make libc6-dev libreadline4-dev libgdbmg1-dev gcc

tar -xvvzf python1.0.1.tar.gz
cd python-1.0.1

sed -e "s/#dbm dbmmodule.o/dbm dbmmodule.o/g" Modules/Setup.in > Modules/Setup2.in
sed -e  "s/ndbm.h/gdbm-ndbm.h/g" Modules/dbmmodule.c > Modules/dbmmodule2.c
rm Modules/Setup.in
rm Modules/dbmmodule.c
mv Modules/Setup2.in Modules/Setup.in
mv Modules/dbmmodule2.c Modules/dbmmodule.c

./configure --with-readline="/python-1.0.1/readline" --with-libc=-lgdbm
make
make install
make libinstall
