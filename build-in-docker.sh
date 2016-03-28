#!/bin/bash
ls -la /data && \
cd /data/RAMCloud/ && \
apt-get update && \
apt-get install -y software-properties-common python-software-properties build-essential liberror-perl git libpcre3 lib32ncurses5-dev lib64ncurses5-dev libssl-dev libpcre3-dev && \
add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true |  /usr/bin/debconf-set-selections && \
add-apt-repository ppa:webupd8team/java && \
git submodule update --init --recursive && \
apt-get update && \
# add-apt-repository -y 'deb http://us.archive.ubuntu.com/ubuntu/ trusty main universe' && \
apt-get install -y libzookeeper-mt-dev protobuf-compiler libprotobuf-dev libboost-all-dev doxygen oracle-java8-installer && \
apt-get install -y g++-4.9 wget && \
export CXX="g++-4.9" && \
export CC="gcc-4.9" && \
wget http://launchpadlibrarian.net/57653337/doxygen_1.7.1-2_amd64.deb && \
dpkg -i doxygen_1.7.1-2_amd64.deb && \
make clean && \
make ZOOKEEPER_LIB='-lzookeeper_mt' INFINIBAND=no -j8 && \
ls -la
