# Global Makefile for findutils
# $Ragnarok: Makefile,v 1.2 2023/12/13 16:25:18 lecorbeau Exp $

PKG	= findutils
VERSION	= 4.9.0

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source findutils
