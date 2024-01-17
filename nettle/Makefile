# Global Makefile for nettle
# $Ragnarok: Makefile,v 1.2 2024/01/17 19:36:21 lecorbeau Exp $

PKG	= nettle
VERSION	= 3.8.1

DEBIAN	= changelog control rules
SYMBOLS	= libnettle8.symbols libhogweed6.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cp ${SYMBOLS} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
