# Global Makefile for gnupg
# $Ragnarok: Makefile,v 1.2 2023/12/29 16:24:49 lecorbeau Exp $

PKG	= gnupg2
VERSION	= 2.2.40

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
