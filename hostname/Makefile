# Global Makefile for hostname
# $Ragnarok: Makefile,v 1.2 2023/12/18 17:23:11 lecorbeau Exp $

PKG	= hostname
VERSION	= 3.23

# Building a deb package
deb:
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b
