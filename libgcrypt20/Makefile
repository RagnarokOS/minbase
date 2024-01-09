# Global Makefile for libgcrypt20
# $Ragnarok: Makefile,v 1.2 2024/01/09 19:17:52 lecorbeau Exp $

PKG	= libgcrypt20
VERSION	= 1.10.1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
