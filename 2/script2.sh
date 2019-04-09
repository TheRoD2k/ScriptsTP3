#export PATH=$PATH:./arm-toolchain/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin

sudo apt-get install libboost-all-dev
sudo apt-get install libssl-dev
sudo apt install libcurl4-openssl-dev
sudo apt-get install gnutls-dev
wget -q ftp://ftp.gnu.org/gnu/gsasl/gsasl-1.8.0.tar.gz
tar xfz gsasl-1.8.0.tar.gz
cd gsasl-1.8.0/
./configure
cd ..
sudo apt-get install gnutls-dev
sudo apt-get install doxygen
sudo apt install sendmail
sudo cmake -DON_PI=OFF CMakeLists.txt
sudo make
cd ..
cd bin
sudo ./Decorator
