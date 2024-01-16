# Global Makefile for gnutls28
# $Ragnarok: Makefile,v 1.2 2024/01/16 18:24:28 lecorbeau Exp $

PKG	= gnutls28
VERSION	= 3.7.9

DEBIAN	= changelog control rules
SYMBOLS	= libgnutls30.symbols libgnutls-dane0.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cp ${SYMBOLS} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
