# Ragnarok-specific Makefile for coreutils
# $Ragnarok: Makefile,v 1.18 2024/12/02 16:21:27 lecorbeau Exp $

MAKE	= make -C
PKG	= coreutils
VERSION	= 9.1

BIN_PROGS = cat chgrp chmod chown cp date dd df dir echo false ln ls \
	    mkdir mknod mv rm rmdir pwd readlink vdir sleep stty sync \
	    touch true uname mktemp
FILES	= AUTHORS NEWS README THANKS TODO

DEBIAN	= changelog control rules

src:
	/usr/bin/apt-get source coreutils

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	patch -d ${PKG}-${VERSION} < patches/libstdbuf-fortify-source-FIX.diff
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b
