# Global Makefile for mawk
# $Ragnarok: Makefile,v 1.1 2024/01/22 18:55:39 lecorbeau Exp $

PKG	= mawk
VERSION	= 1.3.4.20200120

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
