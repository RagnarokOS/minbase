# Global Makefile for libidn2
# $Ragnarok: Makefile,v 1.2 2024/01/20 17:35:11 lecorbeau Exp $

PKG	= libidn2
VERSION	= 2.3.3

DEBIAN	= changelog control rules libidn2-0.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
