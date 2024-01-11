# Global Makefile for libgcrypt20
# $Ragnarok: Makefile,v 1.3 2024/01/11 18:54:02 lecorbeau Exp $

PKG	= libgcrypt20
VERSION	= 1.10.1

DEBIAN	= debian

# Building a deb package
deb: src
	rm -r ${PKG}-${VERSION}/debian
	cp -r ${DEBIAN} ${PKG}-${VERSION}/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
