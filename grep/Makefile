# Global Makefile for grep
# $Ragnarok: Makefile,v 1.2 2023/12/22 00:17:09 lecorbeau Exp $

PKG	= grep
VERSION	= 3.8

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	patch -d ${PKG}-${VERSION}/lib < patches/fix-missing-brackets.diff
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
