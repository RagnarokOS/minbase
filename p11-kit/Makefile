# Global Makefile for p11-kit
# $Ragnarok: Makefile,v 1.1 2024/01/18 17:40:48 lecorbeau Exp $

PKG	= p11-kit
VERSION	= 0.24.1

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
