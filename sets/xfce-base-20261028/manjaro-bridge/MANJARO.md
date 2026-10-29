# Manjaro ARM Bionic-for-glibc build

A separate build of the existing libhybris + Jobs ICD + Arm/xMeM WSI bridge,
with upstream Mesa26.2.5. It targets glibc2.35/GCC12; the ordinary >=2.38 runtime
and system libraries are unchanged. Android GPU GUI acceptance remains pending.

[Download complete bridge sources, local patches, build recipes and license texts](https://github.com/HezeAI/termux-jobs-components/releases/download/xfce-base-20261028/manjaro-bridge-sources.tar.gz). See `third-party/bionic-glibc/MANJARO.md` in that source archive for the build procedure.
The seven runtime ELFs are built with explicit private GCC12/sysroot paths;
no system package hooks, nested PRoot or guest libc replacement is required.

The source archive includes the full pinned libhybris, WSI and Android-header
trees plus the actual build-only Mesa26.1.6 Vulkan/Android stub headers.
The Mesa frontend uses [unmodified Mesa26.2.5](https://archive.mesa3d.org/mesa-26.2.5.tar.xz),
SHA-256 `794b3d1729075dae7ebd47c7283b7ca0cdb5dec668f7f11cc0a5d82f6138a0a5`.
All 12,803 present source files matched; five absent non-build CI files are
explicitly recorded in [validation](validation.json).

Credits and licenses: taowen/libhybris and upstream libhybris contributors
(LGPL-2.1 plus bundled BSD/MIT/ISC/Apache notices); Halium Android headers;
Arm/xMeM Vulkan WSI Layer (MIT); Mesa and its contributors (component-specific
licenses, predominantly MIT and SGI-B for GLX). Local ICD, compatibility hooks,
presentation patches and isolated app integration belong to the Termux Jobs
source work maintained by HezeAI with OpenAI Codex assistance. Full license texts
and exact Git revisions accompany the source archive. No vendor driver is bundled.
