# Termux Job’s Components

Pinned optional graphics runtimes for [Termux Job’s](https://github.com/HezeAI/termux-jobs), maintained by **HezeAI**. Components are published separately from application updates. This repository contains no application APK or `update.json`.

## Optional X11 components for private test2

The separate [x11-extras-20261025 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/x11-extras-20261025) adds the existing Kali-inspired XFCE style, Alpine's minimal VirGL client, and the optional **a6xx-a7xx-a8xx** Bionic driver preset. The theme and VirGL archives are byte-identical to the previous APK payloads. CPU, Turnip + Zink and wrapper rendering settings are unchanged. The application pins stable `mesa-26.2.5` URLs independently; no public application APK is published here.

| Optional archive | Download size | Use |
| --- | --- | --- |
| x11-style.zip | 1,830,990 bytes | Selected Kali-inspired style for all eight XFCE targets |
| x11-virgl-alpine.zip | 4,616,451 bytes | Private musl client for Alpine VirGL only |
| Turnip-a6xx-a7xx-a8xx.zip | 3,507,242 bytes | Optional Termux Wrapper and six Bionic-for-glibc targets |

Choose a wrapper before desktop startup; **a6xx-a7xx-a8xx** is available even without imported archives. Existing imported selections are preserved. If selected and missing, this preset downloads during desktop launch; choosing the list row itself does not download it. SHA-256/size verification precedes import and activation. A shared verified archive cache supports later offline reuse; each environment still owns its runtime, driver selection, display and processes. Cancellation/network failure cannot activate partial downloaded bytes. Existing valid theme/VirGL control archives can be reused without a download.

**Driver distribution credit: StevenMXZ.** The developer supplied the archive. Upstream `meta.json` names **GameHub** and Mesa `26.3.0-devel-b00479181d`. Only the display name was changed to `a6xx-a7xx-a8xx`; the native library is byte-identical. This imported Bionic driver is independent of our stable Mesa 26.2.5 frontend. The name is not a guarantee that every a6xx/a7xx/a8xx device works. An isolated Adreno 830 bridge probe passed Vulkan/GLX pixel rendering, occlusion and VSync changes; fresh-device Android GUI checks and other GPUs remain separate validation.

The style is the fork's Kali-inspired XFCE design, not a Kali Linux installation. Its original graphics, generated wallpaper provenance and build recipe are in `x11-extras-sources.tar.gz`. The Alpine client is an unchanged-source Mesa 26.1.6 build (`virgl`, EGL/GLX/GLES; no Turnip/Zink/LLVM), source SHA-256 `5296b88a0f1e012e2cb9ada150a2bbadf728ca81e5a4fb2ab43c83a4d2158606`. Its complete source remains available as [mesa-26.1.6.tar.xz](https://github.com/HezeAI/termux-jobs-components/releases/download/graphics-20261025/mesa-26.1.6.tar.xz); build flags and notices are included with this set. VirGL/ANGLE server packages and ordinary applications still come from the selected environment's package manager.

## Optional X11 components for private test2

The separate [x11-extras-20261025 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/x11-extras-20261025) adds the existing Kali-inspired XFCE style, Alpine's minimal VirGL client, and the optional **a6xx-a7xx-a8xx** Bionic driver preset. The theme and VirGL archives are byte-identical to the previous APK payloads. CPU, Turnip + Zink and wrapper rendering settings are unchanged. The application pins stable `mesa-26.2.5` URLs independently; no public application APK is published here.

| Optional archive | Download size | Use |
| --- | --- | --- |
| x11-style.zip | 1,830,990 bytes | Selected Kali-inspired style for all eight XFCE targets |
| x11-virgl-alpine.zip | 4,616,451 bytes | Private musl client for Alpine VirGL only |
| Turnip-a6xx-a7xx-a8xx.zip | 3,507,242 bytes | Optional Termux Wrapper and six Bionic-for-glibc targets |

Choose a wrapper before desktop startup; **a6xx-a7xx-a8xx** is available even without imported archives. Existing imported selections are preserved. Each imported entry has a delete action; the built-in preset is protected. Deletion is scoped to one environment, requires confirmation, and uses the same exclusive lock as import/selection; running wrapper desktops hold a shared lock. Removing the selected import falls back to the deferred preset. The phone ZIP is never removed. If selected and missing, this preset downloads during desktop launch; choosing the list row itself does not download it. SHA-256/size verification precedes import and activation. A shared verified archive cache supports later offline reuse; each environment still owns its runtime, driver selection, display and processes. Cancellation/network failure cannot activate partial downloaded bytes. Existing valid theme/VirGL control archives can be reused without a download.

**Driver distribution credit: StevenMXZ.** The developer supplied the archive. Upstream `meta.json` names **GameHub** and Mesa `26.3.0-devel-b00479181d`. Only the display name was changed to `a6xx-a7xx-a8xx`; the native library is byte-identical. This imported Bionic driver is independent of our stable Mesa 26.2.5 frontend. The name is not a guarantee that every a6xx/a7xx/a8xx device works. An isolated Adreno 830 bridge probe passed Vulkan/GLX pixel rendering, occlusion and VSync changes; fresh-device Android GUI checks and other GPUs remain separate validation.

The style is the fork's Kali-inspired XFCE design, not a Kali Linux installation. Its original graphics, generated wallpaper provenance and build recipe are in `x11-extras-sources.tar.gz`. The Alpine client is an unchanged-source Mesa 26.1.6 build (`virgl`, EGL/GLX/GLES; no Turnip/Zink/LLVM), source SHA-256 `5296b88a0f1e012e2cb9ada150a2bbadf728ca81e5a4fb2ab43c83a4d2158606`. Its complete source remains available as [mesa-26.1.6.tar.xz](https://github.com/HezeAI/termux-jobs-components/releases/download/graphics-20261025/mesa-26.1.6.tar.xz); build flags and notices are included with this set. VirGL/ANGLE server packages and ordinary applications still come from the selected environment's package manager.

## Optional X11 components for private test2

The separate [x11-extras-20261025 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/x11-extras-20261025) adds the existing Kali-inspired XFCE style, Alpine's minimal VirGL client, and the optional **a6xx-a7xx-a8xx** Bionic driver preset. The theme and VirGL archives are byte-identical to the previous APK payloads. CPU, Turnip + Zink and wrapper rendering settings are unchanged. The application pins stable `mesa-26.2.5` URLs independently; no public application APK is published here.

| Optional archive | Download size | Use |
| --- | --- | --- |
| x11-style.zip | 1,830,990 bytes | Selected Kali-inspired style for all eight XFCE targets |
| x11-virgl-alpine.zip | 4,616,451 bytes | Private musl client for Alpine VirGL only |
| Turnip-a6xx-a7xx-a8xx.zip | 3,507,242 bytes | Optional Termux Wrapper and six Bionic-for-glibc targets |

Choose a wrapper before desktop startup; **a6xx-a7xx-a8xx** is available even without imported archives. Existing imported selections are preserved. Each imported entry has a delete action; the built-in preset is protected. Deletion is scoped to one environment, requires confirmation, and uses the same exclusive lock as import/selection; running wrapper desktops hold a shared lock. Removing the selected import falls back to the deferred preset. The phone ZIP is never removed. If selected and missing, this preset downloads during desktop launch; choosing the list row itself does not download it. SHA-256/size verification precedes import and activation. A shared verified archive cache supports later offline reuse; each environment still owns its runtime, driver selection, display and processes. Cancellation/network failure cannot activate partial downloaded bytes. Existing valid theme/VirGL control archives can be reused without a download.

**Driver distribution credit: StevenMXZ.** The developer supplied the archive. Upstream `meta.json` names **GameHub** and Mesa `26.3.0-devel-b00479181d`. Only the display name was changed to `a6xx-a7xx-a8xx`; the native library is byte-identical. This imported Bionic driver is independent of our stable Mesa 26.2.5 frontend. The name is not a guarantee that every a6xx/a7xx/a8xx device works. An isolated Adreno 830 bridge probe passed Vulkan/GLX pixel rendering, occlusion and VSync changes; fresh-device Android GUI checks and other GPUs remain separate validation.

The style is the fork's Kali-inspired XFCE design, not a Kali Linux installation. Its original graphics, generated wallpaper provenance and build recipe are in `x11-extras-sources.tar.gz`. The Alpine client is an unchanged-source Mesa 26.1.6 build (`virgl`, EGL/GLX/GLES; no Turnip/Zink/LLVM), source SHA-256 `5296b88a0f1e012e2cb9ada150a2bbadf728ca81e5a4fb2ab43c83a4d2158606`. Its complete source remains available as [mesa-26.1.6.tar.xz](https://github.com/HezeAI/termux-jobs-components/releases/download/graphics-20261025/mesa-26.1.6.tar.xz); build flags and notices are included with this set. VirGL/ANGLE server packages and ordinary applications still come from the selected environment's package manager.

## Current Mesa 26.2.5 release

[Mesa 26.2.5](https://github.com/HezeAI/termux-jobs-components/releases/tag/mesa-26.2.5) publishes the exact runtime bytes accepted by the developer in private test1. [components.json](components.json) records exact versions, SHA-256, sizes, sources, targets and immutable download URLs. [Validation](validation.json) separates developer-reported acceptance from automated checks and remaining limitations.

| Component | Version / source | Targets |
| --- | --- | --- |
| Turnip + Zink container bundles | Official Mesa 26.2.5 with the existing lfdevs Android/KGSL/X11 adaptations, built for Termux Job’s | Ubuntu, Debian, Alpine, Fedora, openSUSE, Void, Arch |
| Bionic for glibc | Private Mesa 26.2.5 Zink/GLX/EGL frontend; pinned libhybris, Arm/xMeM WSI and Jobs ICD | Ubuntu, Debian, Fedora, Arch, openSUSE, Void |
| Termux Turnip, unchanged | Termux Mesa package 26.2.5, retained in graphics-20261025 | Termux |
| Generic Vulkan Loader, unchanged | Khronos / Termux package 1.4.366, retained in graphics-20261025 | Termux Turnip and Wrapper |
| Bionic Vulkan Wrapper, unchanged | Lee Gao v0.0.5r5; sabamdarif packaging; AdrenoTools/linkernsbypass by Billy Laws and contributors | Termux |
| libsensors compatibility, unchanged | Debian lm-sensors 3.6.2-2, retained in graphics-20261025 | private openSUSE runtime |

This release adds four Mesa container archives and one refreshed bridge ZIP. Three glibc layouts serve Ubuntu/Debian/openSUSE, Fedora, and Void/Arch; Alpine has its own musl/non-GLVND archive. Bionic for glibc does not support Alpine/musl. The bridge replaces only three Mesa frontend libraries: its six non-Mesa files (libhybris, linker, WSI, ICD and manifests) remain byte-for-byte identical to the previous release. Native Termux components, imported drivers, VirGL, CPU rendering and desktop settings are unchanged.

## Previous releases and application compatibility

The complete [graphics-20261025 release](https://github.com/HezeAI/termux-jobs-components/releases/tag/graphics-20261025), its tag, assets and original download URLs are preserved. It remains the component set used by public Termux Job’s v2.0.6 and contains the retained Termux packages. The [mesa-26.2.5-test1 prerelease](https://github.com/HezeAI/termux-jobs-components/releases/tag/mesa-26.2.5-test1) is also preserved so the existing private test APK continues working. No release, archive or checksum is overwritten.

Applications pin component URLs and hashes; they do not follow this repository’s moving latest release or catalogue. Publishing these new components does not update an installed older APK or change its downloads. The application repository and its in-app updater remain separate. A future application build must explicitly select the new immutable pins. Current catalogue entries for unchanged Termux/loader/Wrapper/libsensors retain their original graphics-20261025 URLs.

Choose a renderer and, when applicable, import/select a trusted Bionic driver ZIP before starting the desktop. Missing components are prepared in application-owned caches; valid caches work offline. Download size is approximately 8.2 MB for Alpine, 10.3 MB for a glibc container, and 6.1 MB for the bridge frontend/core bundle. Cancellation or verification failure does not activate partial runtime bytes or change the selected driver. No global hosts, installed guest Mesa or agent environment is replaced. Imported vendor drivers execute with the app’s permissions; format/hash validation is not a sandbox or universal compatibility guarantee. The optional vendor-provided driver preset above is separate from these Mesa runtime bundles.

XFCE, Python, native GL/Vulkan dependencies, VirGL/ANGLE and ordinary applications continue using the selected system’s package manager. This repository is not a replacement Linux package repository.

## Development, sources and licenses

Container builds start from the exact official [Mesa 26.2.5 archive](https://archive.mesa3d.org/mesa-26.2.5.tar.xz), SHA-256 `794b3d1729075dae7ebd47c7283b7ca0cdb5dec668f7f11cc0a5d82f6138a0a5`. Existing Android/KGSL/X11 adaptations were ported from [lfdevs/mesa-for-android-container](https://github.com/lfdevs/mesa-for-android-container), commit `98f3d6229d61452cef80f8563af7c56ae599dc14`, relative to upstream parent `4c1c22e9d1a483b27f2502d9becc213257cfa7c5`. The exact 35-file adaptation patch, build/package recipes, compatibility source and provenance are in `mesa-jobs-build-sources.tar.gz`. Container XML configuration and Zstd support remain enabled. The bridge frontend uses unmodified upstream Mesa 26.2.5. Build-only atan2f/asinf/acosf wrappers bind original ARM64 GLIBC_2.17 exports, avoiding newer host-libm requirements without modifying libc or approximating functions.

Bionic for glibc uses pinned **libhybris**, including **taowen/TAWC/ARLinux** work, the **Arm/xMeM Vulkan WSI layer**, and this fork’s ICD/cache/environment integration and compatibility patches. Its unchanged core’s original sources and patches are in `bionic-glibc-sources.tar.gz`. Headers from Mesa 26.1.6 used for that original core remain historical build inputs; the current frontend is 26.2.5. All original copyright and license terms remain in force.

[licenses/](licenses/) and release `component-licenses.tar.gz` retain component-specific terms. Mesa is predominantly MIT with per-file exceptions; GLX includes SGI-B; Vulkan Loader is predominantly Apache-2.0; AdrenoTools/linkernsbypass are BSD-2-Clause; libhybris includes LGPL-2.1 and permissive components; the WSI layer is MIT; libsensors is LGPL-2.1-or-later. The old release retains its exact original source/packaging archives. There is no blanket relicensing of third-party binaries.

Native isolated probes on Adreno 830 passed verified Vulkan/GLX pixels, swap interval 1→0→1 and occlusion for the bridge, glibc and musl runtimes. The bridge also passed odd-width/resize/front-buffer checks. The developer subsequently reported the update works in private test1. These results do not certify every GPU/driver, fresh-device GUI installation or performance improvement. The private test APK passed 338 JVM tests, 114 relevant Python tests and 584 localization checks; lint reported zero errors and 210 existing warnings.

## Maintenance

Keep published tags and binary assets immutable. Publish a new tagged set and explicitly update application pins for later changes. This README holds the detailed overview, compatibility, authorship, source and license information. Release descriptions contain only the following two entries, without a summary or change list:

```text
Component information, compatibility, sources and licenses: https://github.com/HezeAI/termux-jobs-components#readme

AI development assistance: OpenAI Codex
```

Verify public asset bytes against SHA-256 before declaring publication complete.

AI development assistance: OpenAI Codex
