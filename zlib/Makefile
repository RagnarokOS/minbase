# Global Makefile for zlib
# $Ragnarok: Makefile,v 1.1 2024/01/24 16:51:51 lecorbeau Exp $

PKG	= zlib
VERSION	= 1.2.13.dfsg

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
