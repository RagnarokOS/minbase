# Global Makefile for pcre2
# $Ragnarok: Makefile,v 1.1 2024/01/18 17:45:18 lecorbeau Exp $

PKG	= pcre2
VERSION	= 10.42

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
