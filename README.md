# Termux Job’s Components

Pinned optional graphics runtimes for [Termux Job’s](https://github.com/HezeAI/termux-jobs), maintained by **HezeAI**.
This repository distributes components separately from application updates. It does not contain an APK or an `update.json` for the app updater.

## Download and integrity

The [graphics-20261025 release](https://github.com/HezeAI/termux-jobs-components/releases/tag/graphics-20261025) is the immutable component set used by Termux Job’s v2.0.6.
See [components.json](components.json) for exact filenames, architecture, sizes, SHA-256, original sources and supported targets. Archives preserve their original bytes. App builds pin their own hashes and URLs; they do not follow a moving latest-component release or silently update drivers.

Choose a renderer and, when applicable, import/select a trusted Bionic driver ZIP before starting the desktop. On first use the app prepares missing components in that environment’s private cache. Bionic for glibc downloads approximately 6.1 MB once per target when needed. A valid existing runtime works offline. Cancellation or verification failure does not activate a partial runtime or change the selected driver. No global hosts, installed guest Mesa or agent environment is replaced.

## Components and upstream authors

| Component | Version / source | Targets |
| --- | --- | --- |
| Turnip + Zink container bundles | lfdevs/mesa-for-android-container, 26.3.0-devel-20260824 | Ubuntu, Debian, Alpine, Fedora, openSUSE, Void, Arch |
| Termux Turnip | Termux Mesa package, 26.2.5 | Termux |
| Generic Vulkan Loader | Khronos / Termux package, 1.4.366 | Termux Turnip and Termux Wrapper |
| Bionic Vulkan Wrapper | Lee Gao v0.0.5r5; Termux packaging by sabamdarif; AdrenoTools/linkernsbypass by Billy Laws and contributors | Termux |
| Bionic for glibc | pinned libhybris (taowen/TAWC/ARLinux work), Arm/xMeM Vulkan WSI, Mesa 26.1.6; Jobs ICD and integration patches | Ubuntu, Debian, Fedora, Arch, openSUSE, Void |
| libsensors compatibility package | Debian lm-sensors 3.6.2-2 | private openSUSE runtime only |

The existing container Mesa bundles remain development builds; mirroring them does not turn them into stable upstream Mesa releases or extend device compatibility. Bionic for glibc does not support Alpine/musl. Imported vendor drivers are executable native code running with the app’s permissions, not sandboxed plugins. No vendor driver ZIP is included in this component set.

XFCE, Python, native GL/Vulkan dependencies, VirGL/ANGLE packages and ordinary applications still use the selected system’s package manager. This is a graphics-archive mirror, not a replacement Linux package repository.

## Licenses, source and changes

[licenses/](licenses/) retains component-specific notices and license texts; upstream copyright and license terms remain in force. There is no blanket relicensing of third-party binaries. Mesa is predominantly MIT with per-file exceptions; Vulkan Loader is predominantly Apache-2.0; AdrenoTools/linkernsbypass are BSD-2-Clause; libhybris includes LGPL-2.1 and permissive components; the Vulkan WSI layer is MIT; libsensors is LGPL-2.1-or-later.

Release assets include `component-licenses.tar.gz`, corresponding `bionic-glibc-sources.tar.gz`, exact bridge Mesa 26.1.6 source, and Debian lm-sensors upstream source, packaging patches and DSC. The bridge source archive contains original pinned libhybris, WSI and Android headers, local patches, our ICD, manifests and the build recipe. [The application source](https://github.com/HezeAI/termux-jobs/tree/v2.0.6/third-party/bionic-glibc) includes provenance and further validation limits. No driver performance claim or universal compatibility guarantee follows from a successful download.

## Maintenance

This README is the main overview: update its component table, usage, compatibility and source/license information when components are added or revised. Release descriptions stay brief, with the set identifier and a link here; exact versions and integrity data remain in `components.json`.

Keep published component tags and binary bytes immutable. Add a new tagged set and update application pins for future revisions. Verify downloaded artifacts against the manifest before publishing. Application releases remain in the main project and use their own updater metadata.

AI development assistance: OpenAI Codex
