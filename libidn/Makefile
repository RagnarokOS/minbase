# Global Makefile for libidn
# $Ragnarok: Makefile,v 1.2 2024/01/22 17:18:28 lecorbeau Exp $

PKG	= libidn
VERSION	= 1.41

DEBIAN	= changelog control rules libidn12.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
