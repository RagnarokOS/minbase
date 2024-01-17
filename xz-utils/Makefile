# Global Makefile for xz-utils
# $Ragnarok: Makefile,v 1.2 2024/01/17 19:39:43 lecorbeau Exp $

PKG	= xz-utils
VERSION	= 5.4.1

DEBIAN	= changelog control rules symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
