apt-get update
apt-get -y install make libc6-dev libreadline4-dev libgdbmg1-dev gcc

tar -xvvzf readline-2.0.tar.gz
cd readline-2.0
./configure
make
cd ..

tar -xvvzf python-1.4.tar.gz
cp parches/parsermodule.c Python-1.4/Modules
cd Python-1.4

./configure  --with-readline="/readline-2.0" --with-libc="-lcrypt"
make 
make install
make libinstall

cd ..
rm -rf readline-2.0.tar.gz readline-2.0 python-1.4.tar.gz Python-1.4
