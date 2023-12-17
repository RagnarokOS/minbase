# Global Makefile for perl
# $Ragnarok: Makefile,v 1.1 2023/12/17 17:40:34 lecorbeau Exp $

PKG	= perl
VERSION	= 5.36.0

DEBIAN	= changelog control

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
