# Global Makefile for nettle
# $Ragnarok: Makefile,v 1.1 2024/01/12 16:13:57 lecorbeau Exp $

PKG	= nettle
VERSION	= 3.8.1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
