# Global Makefile for base-files
# $Ragnarok: Makefile,v 1.1 2023/12/18 17:20:11 lecorbeau Exp $

PKG	= base-files
VERSION	= 12.4

# Build deb package
deb:
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b
