# Build all packages
# $Ragnarok: Makefile,v 1.3 2023/12/18 17:16:41 lecorbeau Exp $

MAKE	= make -C

SUBDIRS	= base-files base-passwd bash coreutils dash debianutils diffutils \
	  hostname perl procps util-linux e2fsprogs debconf dpkg

# Get the build dependencies which are not part of base.
build-deps:
	for _dir in ${SUBDIRS}; do \
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
