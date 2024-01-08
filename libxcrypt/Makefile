# Global Makefile for libcrypt
# $Ragnarok: Makefile,v 1.2 2024/01/08 19:13:41 lecorbeau Exp $

PKG	= libxcrypt
VERSION	= 4.4.33

DEBIAN	= changelog control rules
SYMBOLS	= libcrypt1.symbols libcrypt1.symbols.amd64 libcrypt1.symbols.common

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cp ${SYMBOLS} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
