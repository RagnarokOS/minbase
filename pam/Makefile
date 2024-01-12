# Global Makefile for pam
# $Ragnarok: Makefile,v 1.1 2024/01/12 16:44:50 lecorbeau Exp $

PKG	= pam
VERSION	= 1.5.2

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
