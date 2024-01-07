# Global Makefile for bzip2
# $Ragnarok: Makefile,v 1.1 2024/01/07 16:56:18 lecorbeau Exp $

PKG	= bzip2
VERSION	= 1.0.8

DEBIAN	= changelog control rules

# Building a deb package
deb:
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
