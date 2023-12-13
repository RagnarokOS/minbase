# Global Makefile for ncurses
# $Ragnarok: Makefile,v 1.1 2023/12/13 16:18:32 lecorbeau Exp $

PKG	= ncurses
VERSION	= 6.4

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source shadow
