# Global Makefile for libcap2
# $Ragnarok: Makefile,v 1.1 2024/01/07 16:58:25 lecorbeau Exp $

PKG	= libcap2
VERSION	= 2.66

DEBIAN	= changelog control

# Building a deb package
deb:
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	patch -d ${PKG}-${VERSION} < patches/fix-distclean-test.diff
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
