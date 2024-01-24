# Global Makefile for libzstd
# $Ragnarok: Makefile,v 1.1 2024/01/24 16:39:05 lecorbeau Exp $

PKG	= libzstd
VERSION	= 1.5.4+dfsg2

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
