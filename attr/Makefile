# Global Makefile for attr
# $Ragnarok: Makefile,v 1.1 2024/01/07 16:52:05 lecorbeau Exp $

PKG	= attr
VERSION	= 2.5.1

DEBIAN	= changelog control rules libattr1.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
