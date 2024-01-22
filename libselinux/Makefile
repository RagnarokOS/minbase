# Global Makefile for libselinux
# $Ragnarok: Makefile,v 1.2 2024/01/22 17:31:49 lecorbeau Exp $

PKG	= libselinux
VERSION	= 3.4

DEBIAN	= changelog control rules libselinux1.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
