# Global Makefile for bzip2
# $Ragnarok: Makefile,v 1.2 2024/01/08 19:06:05 lecorbeau Exp $

PKG	= bzip2
VERSION	= 1.0.8

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
