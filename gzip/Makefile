# Global Makefile for gzip
# $Ragnarok: Makefile,v 1.1 2023/12/20 19:24:22 lecorbeau Exp $

PKG	= gzip
VERSION	= 1.12

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
