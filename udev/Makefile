# Global Makefile for udev related packages
# $Ragnarok: Makefile,v 1.1 2024/01/23 18:45:25 lecorbeau Exp i $

PKG	= systemd
VERSION	= 252.22

DEBIAN	= changelog control rules libudev1.symbols libsystemd0.symbols

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
