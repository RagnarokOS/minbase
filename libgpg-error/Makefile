# Global Makefile for libgpg-error
# $Ragnarok: Makefile,v 1.1 2024/01/02 15:35:59 lecorbeau Exp $

PKG	= libgpg-error
VERSION	= 1.46

DEBIAN	= debian

# Building a deb package
deb: src
	# First, delete the original debian dir
	rm -r ${PKG}-${VERSION}/debian
	cp -r ${DEBIAN} ${PKG}-${VERSION}/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
