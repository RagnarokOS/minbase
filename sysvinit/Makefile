# Global Mekfile for sysvinit
# $Ragnarok: Makefile,v 1.2 2024/01/03 18:45:34 lecorbeau Exp $

PKG	= sysvinit
VERSION	= 3.06

DEBIAN	= changelog control rules

# Building a deb package
deb: src
	cp ${DEBIAN} ${PKG}-${VERSION}/debian/
	cd ${PKG}-${VERSION}; \
		dch -n -p; \
		/usr/bin/debuild -i -us -uc -b

src:
	/usr/bin/apt-get source ${PKG}
