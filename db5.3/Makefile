# Global Makefile for db5.3
# $Ragnarok: Makefile,v 1.2 2023/12/27 18:05:12 lecorbeau Exp $

PKG	= db5.3
VERSION	= 5.3.28+dfsg2

DEBIAN	= changelog control rules

deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	patch -d ${PKG}-${VERSION}/dist/aclocal < patches/tls-configure.diff
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
