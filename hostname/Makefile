# Global Makefile for hostname
# $Ragnarok: Makefile,v 1.1 2023/12/15 18:17:24 lecorbeau Exp $

PKG	= hostname
VERSION	= 3.23+nmu1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source hostname
