# Global Makefile for libsemanage
# $Ragnarok: Makefile,v 1.2 2024/01/22 17:33:26 lecorbeau Exp $

PKG	= libsemanage
VERSION	= 3.4

DEBIAN	= changelog control rules libsemanage2.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
