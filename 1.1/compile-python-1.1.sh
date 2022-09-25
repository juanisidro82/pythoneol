apt-get update
apt-get -y install make libc6-dev libreadline4-dev libgdbmg1-dev gcc

tar -xvvzf readline-2.0.tar.gz
cd readline-2.0
./configure
make
cd ..

tar -xvvzf python1.1.tar.gz
cd python-1.1

sed -e "s/#dbm dbmmodule.c/dbm dbmmodule.c/g" Modules/Setup.in > Modules/Setup2.in
sed -e  "s/ndbm.h/gdbm-ndbm.h/g" Modules/dbmmodule.c > Modules/dbmmodule2.c
rm Modules/Setup.in
rm Modules/dbmmodule.c
mv Modules/Setup2.in Modules/Setup.in
mv Modules/dbmmodule2.c Modules/dbmmodule.c

./configure  --with-readline="/readline-2.0" --with-libc="-lgdbm -lcrypt"
make 
make install
make libinstall
