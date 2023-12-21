# Global Makefile for apt
# $Ragnarok: Makefile,v 1.1 2023/12/21 16:47:45 lecorbeau Exp $

PKG	= apt
VERSION	= 2.6.1

deb: src
	cp -r debian ${PKG}-${VERSION}/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
