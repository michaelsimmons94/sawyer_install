cd ~
git clone https://github.com/OpenKinect/libfreenect2.git
cd libfreenect2
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install libturbojpeg libjpeg-turbo8-dev
sudo apt-get install libglfw3-dev
sudo apt-get install beignet-dev
sudo apt-get install libopenni2-dev
mkdir build && cd build
cmake -Dfreenect2_DIR=$HOME/freenect2/lib/cmake/freenect2
make
make install
sudo cp ../platform/linux/udev/90-kinect2.rules /etc/udev/rules.d/