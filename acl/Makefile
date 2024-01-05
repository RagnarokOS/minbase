# Global Makefile for acl
# $Ragnarok: Makefile,v 1.1 2024/01/05 17:37:51 lecorbeau Exp $

PKG	= acl
VERSION	= 2.3.1

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
