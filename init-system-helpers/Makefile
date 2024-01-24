# Global Makefile for init-system-helpers
# $Ragnarok: Makefile,v 1.1 2024/01/24 17:32:29 lecorbeau Exp $

PKG	= init-system-helpers
VERSION	= 1.65.2

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
