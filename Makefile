# Build all packages
# $Ragnarok: Makefile,v 1.1 2023/12/12 19:12:25 lecorbeau Exp $

MAKE	= make -C

SUBDIRS	= bash coreutils dash debianutils diffutils hostname procps \
	  util-linux e2fsprogs debconf dpkg base-passwd

# Get the build dependencies which are not part of base.
build-deps:
	for _dir in ${SUBDIR}; do \
		srcipts/get-build-deps $$_dir; \
		done

# Build all packages.
dist:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir deb; \
		scripts/mv-files $$_dir; \
		done

# Cleanup
clean:
	scripts/cleanup
