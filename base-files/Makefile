# Global Makefile for base-files
# $Ragnarok: Makefile,v 1.2 2024/02/11 17:44:57 lecorbeau Exp $

PKG	= base-files
VERSION	= 12.5

# Build deb package
deb:
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b
