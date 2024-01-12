# Global Makefile for gnutls28
# $Ragnarok: Makefile,v 1.1 2024/01/12 16:10:24 lecorbeau Exp $

PKG	= gnutls28
VERSION	= 3.7.9

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
