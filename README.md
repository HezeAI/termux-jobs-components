# Termux Job’s Components

Pinned installation archives, optional runtimes and build inputs for
[Termux Job’s](https://github.com/HezeAI/termux-jobs), maintained by **HezeAI**.
This is an independent unofficial mirror. It does not publish the application APK
or its updater metadata. Applications select immutable URLs and hashes; the latest
Components release is not an automatic application/component update.

## Current catalogue and validation status

The following groups are selected by the published application 2.1.7 or its build
recipe. Availability is distinct from device/GUI validation; consult each set.

| Group | Current role | Details |
| --- | --- | --- |
| Distribution rootfs and Ubuntu AI | Initial environment installation | [Rootfs](sets/rootfs-arm64-20261028), [Ubuntu AI](sets/ubuntu-ai-base-arm64-20261102/README.md) |
| XFCE and host packages | Initial desktop/required-component repair | [XFCE set](sets/xfce-base-20261028) |
| Mesa, bridge, X11 extras | Optional rendering/style/runtime inputs | [Mesa](sets/mesa-26.2.5), [Extras](sets/x11-extras-20261025) |
| Manjaro glibc 2.35 variants | Separate ABI-specific Turnip/bridge payloads; device GUI acceptance remains unconfirmed in the set reports | [Turnip](sets/xfce-base-20261028/manjaro-turnip/README.md), [Bridge](sets/xfce-base-20261028/manjaro-bridge/MANJARO.md) |
| RTK OSS 1.1.0 jobs.1 | Optional Ubuntu AI output filtering | [RTK](sets/rtk-1.1.0-jobs.1/README.md) |
| Termux:X11 and musl headers | Application build/CI inputs, not guest runtime updates | [X11](sets/x11-core-fa3a8b430e28), [Headers](sets/x11-build-headers-musl-1.2.6-r2/README.md) |

## Historical experiments

[Local AI preview and accelerator/model-weight experiments](history/LOCAL-AI-PREVIEW.md)
are historical. Their files remain available for provenance and reproducibility;
they are not current 2.1.7 features. Old graphics versions also remain immutable,
and individual unchanged files can still be pinned by current applications.

## Pinned musl build headers

The unchanged Alpine musl-dev1.2.6-r2 input is preserved for cold X11 build/CI
after upstream removal. This is not a runtime package update.
[Purpose, pins, license and usage](sets/x11-build-headers-musl-1.2.6-r2/README.md).

## RTK OSS 1.1.0 — jobs.1

Separate ARM64 Ubuntu AI component with exact pre-filter/output byte measurements.
Upstream RTK version 1.1.0, component revision jobs.1; pinned archive/binary hashes.
[Build, sources, license and compatibility](sets/rtk-1.1.0-jobs.1/README.md).
The versioned release contains the verified binary and corresponding sources. Existing components remain unchanged.

## License/source review — 2026-11-03

Independent unofficial Components mirror maintained by HezeAI; not affiliated with
or endorsed by the Termux team or the respective upstream projects.
[Review and remaining component-specific questions](LICENSE-REVIEW-20261103.md) ·
[Exact published asset inventory](LICENSE-ASSET-INVENTORY-20261103.json).

Ubuntu AI now has a **separate manual source download** covering all87 image packages,
58 exact source packages and127 downloaded/checksummed source files. This does not
change an existing binary, application download catalog or installed environment.
[Source archive](https://github.com/HezeAI/termux-jobs-components/releases/download/ubuntu-ai-base-arm64-20261102/ubuntu-ai-corresponding-sources-20261103.tar).


## Manjaro ARM Turnip + Zink — separate glibc 2.35 build

A separate **Mesa26.2.5 / glibc2.35 / GCC12** build with the existing lfdevs
Android/KGSL/X11 adaptations. It adds a uniquely named asset to the existing
[xfce-base-20261028 release](https://github.com/HezeAI/termux-jobs-components/releases/tag/xfce-base-20261028);
existing component assets and the Manjaro Bionic bridge are retained unchanged.
[Sources, exact pins, licenses and clean-loader validation](sets/xfce-base-20261028/manjaro-turnip/README.md).
Android GPU GUI acceptance remains pending; no new application APK is published here.

## Manjaro ARM Bionic-for-glibc — separate glibc 2.35 build

The separate [Manjaro bridge addition](https://github.com/HezeAI/termux-jobs-components/releases/tag/xfce-base-20261028)
builds the existing libhybris/Jobs ICD/WSI bridge and unmodified Mesa **26.2.5**
against Manjaro ARM's **glibc 2.35 and GCC 12** baseline. It uses a separate
archive and per-environment driver/runtime cache; the existing >=2.38 bridge,
its published files, and CPU/VirGL renderers are preserved. It does not update
or downgrade the installed Manjaro libc or replace guest system Mesa.

This is a **compatibility-test component**, not a new public application APK.
Compiler/loader and private cache verification do not establish Android GUI,
performance or support for every imported driver/device. Turnip + Zink for
Manjaro is separate and is not enabled by this bridge candidate. See the
[manifest](sets/xfce-base-20261028/manjaro-bridge/components.json),
[validation](sets/xfce-base-20261028/manjaro-bridge/validation.json) and
[build/source/license notes](sets/xfce-base-20261028/manjaro-bridge/MANJARO.md).

Credits: [taowen/libhybris](https://github.com/taowen/libhybris),
[Halium Android headers](https://github.com/Halium/android-headers),
[Arm/xMeM Vulkan WSI Layer](https://github.com/xMeM/vulkan-wsi-layer),
[Mesa and its contributors](https://mesa3d.org/). HezeAI's Termux Jobs sources
provide the ICD, existing compatibility/presentation patches and isolated
application integration. The candidate rebuilds those same sources for an older
ABI baseline. No proprietary/Bionic GPU driver is included. Existing driver
preset distribution credit remains **StevenMXZ**.


An upstream APK below is a pinned build input, not a Termux Job’s app release.

## Pinned ARM64 distribution bases

The [rootfs-arm64-20261028 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/rootfs-arm64-20261028) preserves exact upstream base images for new Termux Job’s installations. **These archives do not include a preinstalled XFCE desktop or frozen font/library package set.** Existing Mesa, wrapper, theme and VirGL component releases remain unchanged. Ubuntu AI has a separate [pinned Ubuntu 26.04.1 LTS ARM64 base](sets/ubuntu-ai-base-arm64-20261102/README.md) for new installations. Existing environments remain unchanged; see that set for validation limits.

| Environment | Upstream tag / base | Download bytes |
| --- | --- | --- |
| ubuntu | 26.04 | 41144320 |
| debian | 13 | 49786880 |
| alpine | 3.24 | 4198400 |
| fedora | 44 | 65832960 |
| opensuse | 16.0 | 41441280 |
| void | latest | 73768960 |
| kali | latest | 52357120 |
| archlinux | dated archive | 163892644 |
| manjaro | dated archive | 211549268 |

Ubuntu, Debian, Alpine, Fedora, openSUSE, Void and Kali are single-architecture OCI layouts containing original digest-verified upstream blobs. Arch Linux ARM and Manjaro retain the exact original tar archive bytes. `rootfs-manifest.json` records provenance, versions/digests, sizes and SHA-256; `rootfs-validation.json` distinguishes archive/library checks from pending device installation/GUI tests. `rootfs-build-sources.tar.gz` contains the packaging recipe and pinned OCI metadata. [Distribution licenses and source locations](licenses/pinned-rootfs.md).

Applications must verify the archive hash before calling native proot-distro. Cached complete archives may be reused offline; incomplete downloads must never be extracted. Existing environments are preserved and are not automatically rebased to these images. Updating guest packages remains distinct from downloading a new base image. Manjaro ARM has an older glibc base. Separate glibc2.35 Turnip + Zink and Bionic-for-glibc compatibility builds are provided; do not install the ordinary >=2.38 payload in Manjaro.


## Pinned Termux:X11 build input

The [x11-core-fa3a8b430e28 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/x11-core-fa3a8b430e28) mirrors the **unchanged** upstream Termux:X11 APK from commit `fa3a8b430e2896a19f44c99a9cb056254615ae06`. This prevents a mutable upstream nightly URL from breaking reproducible application builds. The fork extracts its ARM64 `libXlorie.so` into the application APK at build time; end-user desktop startup does not download this build input. Installing XFCE still uses the selected environment’s distribution packages. Existing APKs, renderer choices and published component assets are unchanged.

- Build input: `termux-x11-universal-debug-fa3a8b430e28.apk`,14,693,944bytes, SHA-256 `64995746d1887a0e70bc8977d4a9c5ea56e3e00eadd4a6eeab32ae6048ba733a`.
- Extracted ARM64 core SHA-256: `8ad76408710c21b9a61d3db07900e5bb4e3f88efb1670ac0ff3a2166f403567d`, byte-identical to the previous app runtime. This mirror does not update or rebuild that core.
- [Upstream sources](https://github.com/termux/termux-x11/tree/fa3a8b430e2896a19f44c99a9cb056254615ae06), GPL-3.0. Credit: the Termux:X11 project and its contributors. Bundled native dependencies retain their own licenses.
- `termux-x11-fa3a8b430e28-sources.tar.gz` contains the unmodified exact upstream Git tree and all16 pinned native submodule trees, with their licenses/build scripts. It exports Git objects, excluding local changes, Git databases, build products and private device files. The upstream public test signing fixture is omitted; generate an independent debug key and configure `signingConfigs.debug` before rebuilding.
- [Validation](sets/x11-core-fa3a8b430e28/validation.json), [manifest and hashes](sets/x11-core-fa3a8b430e28/components.json), [source revisions](sets/x11-core-fa3a8b430e28/source-manifest.json), [GPL license](licenses/Termux-X11-GPL-3.0.txt).

The upstream APK is preserved as an original build artifact, including its original signature. It is not the Termux Job’s application update. Only the download location changes; the reviewed byte length, SHA-256 and embedded source commit remain mandatory checks.

## Optional X11 extras

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

The complete [graphics-20261025 release](https://github.com/HezeAI/termux-jobs-components/releases/tag/graphics-20261025), its tag, assets and original download URLs are preserved. It remains the component set used by public Termux Job’s v2.0.6 and contains the retained Termux packages. The redundant `mesa-26.2.5-test1` experimental release was removed at the developer’s explicit request after private test2 migrated to stable `mesa-26.2.5` URLs. Its Git tag/history remains for provenance. Older private test1 APKs need test2 for uncached component downloads; already verified local runtimes remain usable offline. Stable Mesa and graphics-20261025 assets/checksums were not changed.

Applications pin component URLs and hashes; they do not follow this repository’s moving latest release or catalogue. Publishing these new components does not update an installed older APK or change its downloads. The application repository and its in-app updater remain separate. Each application build explicitly selects its immutable pins; component publication alone does not enable a new renderer. Current catalogue entries for unchanged Termux/loader/Wrapper/libsensors retain their original graphics-20261025 URLs.

Choose a renderer and, when applicable, import/select a trusted Bionic driver ZIP before starting the desktop. Missing components are prepared in application-owned caches; valid caches work offline. Download size is approximately 8.2 MB for Alpine, 10.3 MB for a glibc container, and 6.1 MB for the bridge frontend/core bundle. Cancellation or verification failure does not activate partial runtime bytes or change the selected driver. No global hosts, installed guest Mesa or agent environment is replaced. Imported vendor drivers execute with the app’s permissions; format/hash validation is not a sandbox or universal compatibility guarantee. The optional vendor-provided driver preset above is separate from these Mesa runtime bundles.

XFCE, Python, native GL/Vulkan dependencies, VirGL/ANGLE and ordinary applications continue using the selected system’s package manager. This repository is not a replacement Linux package repository.

## Development, sources and licenses

Container builds start from the exact official [Mesa 26.2.5 archive](https://archive.mesa3d.org/mesa-26.2.5.tar.xz), SHA-256 `794b3d1729075dae7ebd47c7283b7ca0cdb5dec668f7f11cc0a5d82f6138a0a5`. Existing Android/KGSL/X11 adaptations were ported from [lfdevs/mesa-for-android-container](https://github.com/lfdevs/mesa-for-android-container), commit `98f3d6229d61452cef80f8563af7c56ae599dc14`, relative to upstream parent `4c1c22e9d1a483b27f2502d9becc213257cfa7c5`. The exact 35-file adaptation patch, build/package recipes, compatibility source and provenance are in `mesa-jobs-build-sources.tar.gz`. Container XML configuration and Zstd support remain enabled. The bridge frontend uses unmodified upstream Mesa 26.2.5. Build-only atan2f/asinf/acosf wrappers bind original ARM64 GLIBC_2.17 exports, avoiding newer host-libm requirements without modifying libc or approximating functions.

Bionic for glibc uses pinned **libhybris**, including **taowen/TAWC/ARLinux** work, the **Arm/xMeM Vulkan WSI layer**, and this fork’s ICD/cache/environment integration and compatibility patches. Its unchanged core’s original sources and patches are in `bionic-glibc-sources.tar.gz`. Headers from Mesa 26.1.6 used for that original core remain historical build inputs; the current frontend is 26.2.5. All original copyright and license terms remain in force.

[licenses/](licenses/) and release `component-licenses.tar.gz` retain component-specific terms. Mesa is predominantly MIT with per-file exceptions; GLX includes SGI-B; Vulkan Loader is predominantly Apache-2.0; AdrenoTools/linkernsbypass are BSD-2-Clause; libhybris includes LGPL-2.1 and permissive components; the WSI layer is MIT; libsensors is LGPL-2.1-or-later. The old release retains its exact original source/packaging archives. There is no blanket relicensing of third-party binaries.

Historical graphics-set checks: native isolated probes on Adreno 830 passed verified Vulkan/GLX pixels, swap interval 1→0→1 and occlusion for the bridge, glibc and musl runtimes. The bridge also passed odd-width/resize/front-buffer checks. The developer subsequently reported the update works in private test1. These results do not certify every GPU/driver, fresh-device GUI installation or performance improvement. These historical private-APK results are not tests of application 2.1.7: 338 JVM tests, 114 relevant Python tests and 584 localization checks; lint reported zero errors and 210 existing warnings. Current application results are in its [versioned report](https://github.com/HezeAI/termux-jobs/blob/v2.1.7/docs/fork/VALIDATION-v2.1.7.md).

## Maintenance

Keep published tags and binary assets immutable. Publish a new tagged set and explicitly update application pins for later changes. This README holds the detailed overview, compatibility, authorship, source and license information. Release descriptions contain only the following two entries, without a summary or change list:

```text
Component information, compatibility, sources and licenses: https://github.com/HezeAI/termux-jobs-components#readme

AI development assistance: OpenAI Codex
```

Verify public asset bytes against SHA-256 before declaring publication complete.

AI development assistance: OpenAI Codex

## Pinned initial X11 desktop packages

The [`xfce-base-20261028` set](https://github.com/HezeAI/termux-jobs-components/releases/tag/xfce-base-20261028) supplies original distribution package files for the first XFCE installation and missing-component repair. It complements the separately pinned base images; it does not replace an existing rootfs. The catalog fixes every archive size, SHA-256 and internal package manifest. Package managers resolve the offline transaction against the selected environment's own database.

**This is an initial baseline, not a permanent version lock.** Official package repositories stay enabled. Users can install Python, libraries and other programs, change XFCE and explicitly update their environment. Ordinary launches check required components rather than exact version equality. More recent installed packages are retained during repair; incompatible dependency plans fail instead of forcing removals or downgrades. Ordinary recommended applications remain separate native package-manager installations. Application update/snapshot/rollback behavior is documented in the [application environment guide](https://github.com/HezeAI/termux-jobs/blob/v2.1.7/docs/fork/ENVIRONMENT-UPDATES.md); the archive set itself supplies package inputs.

The small `host-audio` and `host-virgl` archives provide Android/Termux-side prerequisites without installing Termux XFCE for a guest desktop. Ubuntu AI intentionally retains its upstream agent-environment policy. The ordinary Mesa/bridge binaries requiring glibc 2.38 or newer cannot load on Manjaro ARM’s pinned glibc 2.35 base. Termux Job’s 2.1.7 selects the separate glibc 2.35 variants listed above. Their availability does not establish Android GUI/GPU acceptance; CPU/VirGL remain separate options.

| Target | Packages | Archive bytes | SHA-256 |
|---|---:|---:|---|
| alpine | 378 | 315504640 | `4478b788018fced9dca8799bdb6f59d340d8982d55b71ffe2a528adcf240e370` |
| archlinux | 339 | 346624000 | `60ae6e83ed71935f7ab10585a86f6e2f922d3ae0b8a3f81d65d5ba2d99f366b9` |
| debian | 329 | 153579520 | `a5872a8df747b73e18efa8e270925a3a9d1ad605af42007d3ed221974a8cdb53` |
| fedora | 300 | 231495680 | `15982be3b9efca85bbc4d033e5aec20257f5e3c1aa96218b377b4e9a63371a1e` |
| host-audio | 23 | 7802880 | `9419bf21363187c6e0ba21008c6cb142d66ff36e67022bdf5e00a6e8c7134821` |
| host-virgl | 24 | 42926080 | `001bdd6537b285232319bbee4cc0da75755ccc50be3b01f7de99fe87ba73244e` |
| kali | 336 | 171540480 | `6b153cc185e5c92c618ce7224044184276739e576eb678fad9031cbfef6406fe` |
| manjaro | 223 | 215398400 | `07d396cbff3c1f9b9d467a5c14d8d589af597b7d2520ae039ff61f8d9f4f3660` |
| opensuse | 375 | 223528960 | `3f1a6148f2e79de8073d2bf048234a21a188cc860416ceebe8e62d634760a8f6` |
| termux | 191 | 156876800 | `4a5cae39faba449aae3049a590f34d4629d462d71329d1a1e9c67255a383bef5` |
| ubuntu | 332 | 165703680 | `3adf653d523e57e39b60c4b9ae9fbe0b94290321fb730770248ec356ac5ed12b` |
| void | 312 | 326502400 | `733b609beb223bc80bbd6e4fcff642ee1e0c91408b7a8f9b4983ceac620c0f44` |

Native dependency solver simulation, original archive checksums and package-signature evidence are recorded separately from device installation and GUI/rendering tests. New Kali/Manjaro clean-device GUI validation remains pending. No existing environment is reset to produce these checks.

Sources: [Termux packages/build recipes](https://github.com/termux/termux-packages), [Ubuntu](https://archive.ubuntu.com/), [Debian](https://www.debian.org/distrib/packages), [Kali](https://pkg.kali.org/), [Alpine](https://pkgs.alpinelinux.org/), [Fedora](https://src.fedoraproject.org/), [openSUSE](https://build.opensuse.org/), [Void](https://github.com/void-linux/void-packages), [Arch Linux ARM](https://archlinuxarm.org/packages), and [Manjaro ARM](https://gitlab.manjaro.org/manjaro-arm/packages). Every package retains its upstream license and embedded notices; these are not relicensed as Termux Jobs code. See [source and license notes](licenses/pinned-rootfs.md). Package manifests identify exact original names/versions/architectures and checksums. The source archive provides collection/packaging recipes, native solver checks and the installer implementation. No account data, private signing keys or user rootfs snapshots are included.
