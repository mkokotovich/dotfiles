#!/bin/sh -e

VERSION=6.5
BASEDIR=~/global/${VERSION}
INSTALLDIR=~/bin/globalroot

#install ncurses
sudo yum -y install ncurses ncurses-devel

mkdir -p ${BASEDIR}
pushd $BASEDIR

wget http://tamacom.com/global/global-${VERSION}.tar.gz

tar -zxvf global-${VERSION}.tar.gz

cd global-${VERSION}

./configure --prefix=${INSTALLDIR}
#add libtinfo
sed -i "s|^LIBS =|LIBS = -ltinfo|g" gtags-cscope/Makefile
make
make install

echo "export PATH=\$PATH:${INSTALLDIR}/bin" >> ~/.bashrc
echo "export GTAGSCONF=${INSTALLDIR}/share/gtags/gtags.conf" >> ~/.bashrc
echo "export GTAGSLABEL=pygments" >> ~/.bashrc

source ~/.bashrc

popd
