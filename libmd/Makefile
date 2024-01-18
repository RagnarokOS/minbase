# Global Makefile for libmd
# $Ragnarok: Makefile,v 1.1 2024/01/18 17:36:14 lecorbeau Exp $

PKG	= libmd
VERSION	= 1.0.4

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
