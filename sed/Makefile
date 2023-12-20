# Global Makefile for sed
# $Ragnarok: Makefile,v 1.1 2023/12/20 19:36:23 lecorbeau Exp $

PKG	= sed
VERSION	= 4.9

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
