# Global Makefile for db5.3
# $Ragnarok: Makefile,v 1.1 2023/12/26 16:26:41 lecorbeau Exp $

PKG	= db5.3
VERSION	= 5.3.28+dfsg2

DEBIAN	= changelog control rules

deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
