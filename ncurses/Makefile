# Global Makefile for ncurses
# $Ragnarok: Makefile,v 1.3 2023/12/13 23:58:11 lecorbeau Exp $

PKG	= ncurses
VERSION	= 6.4

DEBIAN	= changelog control rules
SYMBOLS	= libtinfo5.symbols libtinfo6.symbols libncurses5.symbols \
	  libncursesw5.symbols libncurses6.symbols libncursesw6.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cp ${SYMBOLS} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ncurses
