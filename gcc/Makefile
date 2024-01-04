# Global Makefile for gcc-12-base
# $Ragnarok: Makefile,v 1.1 2024/01/04 16:31:56 lecorbeau Exp $

PKG	= gcc-12-base
VERSION	= 12.2.0-99ragnarok01

# gcc-12-base is only repackaged with Ragnarok's version string. There's
# no re-compiling, so just use 'dpkg-deb -b'.

deb:
	dpkg-deb -b ${PKG}-${VERSION}
