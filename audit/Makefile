# Global Makefile for audit
# $Ragnarok: Makefile,v 1.1 2024/01/07 16:53:41 lecorbeau Exp $

PKG	= audit
VERSION	= 3.0.9

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
