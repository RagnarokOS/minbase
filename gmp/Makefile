# Global Makefile for gmp
# $Ragnarok: Makefile,v 1.1 2024/01/10 18:24:14 lecorbeau Exp $

PKG	= gmp
VERSION	= 6.2.1+dfsg1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
