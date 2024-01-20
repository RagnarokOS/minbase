# Global Makefile for libmd
# $Ragnarok: Makefile,v 1.2 2024/01/20 17:36:53 lecorbeau Exp $

PKG	= libmd
VERSION	= 1.0.4

DEBIAN	= changelog control rules libmd0.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
