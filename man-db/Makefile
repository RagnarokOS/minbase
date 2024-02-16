# Ragnarok-specific Makefile for man-db
# $Ragnarok: Makefile,v 1.1 2024/02/16 16:44:34 lecorbeau Exp $

PKG	= man-db
VERSION	= 2.11.2

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
