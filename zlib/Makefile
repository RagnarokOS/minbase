# Global Makefile for zlib
# $Ragnarok: Makefile,v 1.2 2024/01/24 19:03:55 lecorbeau Exp $

PKG	= zlib
VERSION	= 1.2.13.dfsg

DEBIAN	= changelog control rules
SYMBOLS	= zlib1g.symbols lib32z1.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cp ${SYMBOLS} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
