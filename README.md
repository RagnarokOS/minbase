# minbase

This is the infrastructure used to rebuild the Debian packages of priority
'Essential' and 'Required' (the 'minabse' debootstrap variant). For packages
and files native to Ragnarok (i.e. not from the Debian repositories) see the
[src](https://github.com/RagnarokOS/src) repository.

For the most part, the source code for packages is not hosted here, only the
Makefiles, scripts, patches and any file that differ from upstream (usually,
the changelog, control and rules files). Source packages are fetched from
Debian's repository before build-time.

## Differences with Debian's packages

Ragnarok rebuilds all deb packages in its base system using the LLVM/Clang
toolchain and adds extra hardening options
(see [src/etc/dpkg/buildflags.conf](https://github.com/RagnarokOS/src/blob/master/etc/dpkg/buildflags.conf)).

Most packages are also built with the [ThinLTO](https://clang.llvm.org/docs/ThinLTO.html)
option, with a few exceptions.

**Under construction. Don't use the instructions below just yet.**

## Building

```
    # mkdir -p /usr/src/ragnarok
    # chown yourusername /usr/src/ragnarok
    $ cd /usr/src/ragnarok
    $ git clone https://github.com/RagnarokOS/minbase.git
    $ cd minbase
```

To build all packages, from the current directory, run:

```
    # make build-deps
    $ make dist
```

The `make build-deps` command will create a metapackage for the missing
build dependencies of all packages (though most are already part of the
base system). It will then automatically install the packages, which is
why this command has to be run with root privileges.

`make dist` will then build all packages. This command does not require
root privileges.

At the end of the process, all `.deb`s and related files will be located
in /usr/src/ragnarok/packages.

To build a single package, simply `cd` into its directory then run
`make build-deps` and `make deb`.

## Cleaning up

After the build is finished, it is possible to remove all fetched source
and remove the build-dependencies that were installed during the `make build-deps`
stage by running `make clean`.

## Recommendation

It is highly recommended to instead build the dist inside a chroot
set up with an unprivileged user. The official Ragnarok way is to
chroot into an extracted [miniroot](https://github.com/RagnarokOS/iso/releases/download/01/miniroot01.tgz)
tarball.
