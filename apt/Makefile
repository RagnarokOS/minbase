# Global Makefile for apt
# $Ragnarok: Makefile,v 1.2 2023/12/21 17:27:21 lecorbeau Exp $

PKG	= apt
VERSION	= 2.6.1

deb: src
	cp -r debian ${PKG}-${VERSION}/
	cp prepare-release ${PKG}-${VERSION}/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
