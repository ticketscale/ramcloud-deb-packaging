ls -la /data && \
cd /data/RAMCloud/ && \
git submodule update --init --recursive && \
add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
add-apt-repository -y 'deb http://us.archive.ubuntu.com/ubuntu/ trusty main universe' && \
apt-get update && \
apt-get install -y libzookeeper-mt-dev protobuf-compiler libprotobuf-dev libboost-all-dev doxygen=1.7.6.1-2ubuntu1 && \
apt-get install -y g++-4.9 && \
export CXX="g++-4.9" && \
export CC="gcc-4.9" && \
wget http://launchpadlibrarian.net/57653337/doxygen_1.7.1-2_amd64.deb && \
dpkg -i doxygen_1.7.1-2_amd64.deb && \
make clean && \
make ZOOKEEPER_LIB='-lzookeeper_mt' INFINIBAND=no -j8 && \
ls -la
