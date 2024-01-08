# Global Makefile for libcap-ng
# $Ragnarok: Makefile,v 1.1 2024/01/08 19:09:10 lecorbeau Exp $

PKG	= libcap-ng
VERSION	= 0.8.3

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
