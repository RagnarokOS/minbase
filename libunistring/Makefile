# Global Makefile for libunistring
# $Ragnarok: Makefile,v 1.1 2024/01/24 16:15:10 lecorbeau Exp $

PKG	= libunistring
VERSION	= 1.0

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
