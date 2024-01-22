# Global Makefile for tar
# $Ragnarok: Makefile,v 1.1 2024/01/22 18:40:06 lecorbeau Exp $

PKG	= tar
VERSION	= 1.34+dfsg

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
