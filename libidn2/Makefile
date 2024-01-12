# Global Makefile for libidn2
# $Ragnarok: Makefile,v 1.1 2024/01/12 19:17:17 lecorbeau Exp $

PKG	= libidn2
VERSION	= 2.3.3

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
