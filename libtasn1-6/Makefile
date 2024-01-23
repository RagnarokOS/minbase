# Global Makefile for libtasn1-6
# $Ragnarok: Makefile,v 1.1 2024/01/23 18:42:43 lecorbeau Exp $

PKG	= libtasn1-6
VERSION	= 4.19.0

DEBIAN	= changelog control rules libtasn1-6.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
