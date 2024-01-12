# Global Makefile for lz4
# $Ragnarok: Makefile,v 1.1 2024/01/12 19:05:40 lecorbeau Exp $

PKG	= lz4
VERSION	= 1.9.4

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
