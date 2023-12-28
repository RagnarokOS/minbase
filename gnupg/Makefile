# Global Makefile for gnupg
# $Ragnarok: Makefile,v 1.1 2023/12/28 16:50:03 lecorbeau Exp $

PKG	= gnupg2
VERSION	= 2.2.40

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
