export PATH=$PATH:./arm-toolchain/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin

sudo cmake -DSYSROOT:STRING=~/arm-toolchain/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot -DON_PI=ON CMakeLists.txt
sudo make
mkdir temp_pi
rsync -av --progress ./ ./temp_pi --exclude temp_pi --exclude tools-master
tar -czvf compressed_pi.tar.gz temp_pi
rm -r ./temp_pi
rmdir temp_pi
cd ..
cd bin-arm
sudo ./AbstractFactory
sudo ./AbstractFactorySerializer
sudo ./Bridge
sudo ./Builder
sudo ./Facade
sudo ./Prototype

