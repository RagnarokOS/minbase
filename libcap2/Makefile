# Global Makefile for libcap2
# $Ragnarok: Makefile,v 1.2 2024/01/08 19:06:45 lecorbeau Exp $

PKG	= libcap2
VERSION	= 2.66

DEBIAN	= changelog control

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	patch -d ${PKG}-${VERSION} < patches/fix-distclean-test.diff
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
