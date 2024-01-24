# Global Makefile for xxhash
# $Ragnarok: Makefile,v 1.1 2024/01/24 16:32:30 lecorbeau Exp $

PKG	= xxhash
VERSION	= 0.8.1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
