# Global Makefile for shadow
# $Ragnarok: Makefile,v 1.2 2023/12/13 16:10:42 lecorbeau Exp $

PKG	= shadow
VERSION	= 4.13+dfsg1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source shadow
