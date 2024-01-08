# Global Makefile for libffi
# $Ragnarok: Makefile,v 1.1 2024/01/08 19:11:11 lecorbeau Exp $

PKG	= libffi
VERSION	= 3.4.4

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
