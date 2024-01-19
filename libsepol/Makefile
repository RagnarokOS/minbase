# Global Makefile for libsepol
# $Ragnarok: Makefile,v 1.1 2024/01/19 18:37:02 lecorbeau Exp $

PKG	= libsepol
VERSION	= 3.4

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
