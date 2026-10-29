# Termux Job’s Components

## Manjaro ARM Bionic-for-glibc compatibility candidate

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


Pinned optional graphics runtimes and local-model assets for [Termux Job’s](https://github.com/HezeAI/termux-jobs), maintained by **HezeAI**. Components are published separately from application updates. This repository contains no Termux Job’s installation APK or `update.json`. An upstream APK below is a pinned build input, not a Termux Job’s app release.

## Pinned ARM64 distribution bases

The [rootfs-arm64-20261028 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/rootfs-arm64-20261028) preserves exact upstream base images for upcoming Termux Jobs installations. **These archives do not include a preinstalled XFCE desktop or frozen font/library package set.** Existing Mesa, wrapper, theme and VirGL component releases remain unchanged. Ubuntu AI intentionally keeps its existing upstream agent-environment installation policy.

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

Applications must verify the archive hash before calling native proot-distro. Cached complete archives may be reused offline; incomplete downloads must never be extracted. Existing environments are preserved and are not automatically rebased to these images. Updating guest packages remains distinct from downloading a new base image. Manjaro ARM currently has an older glibc base and is initially intended for CPU/VirGL desktop testing, not the current glibc >=2.38 Turnip or Bionic-for-glibc runtime.


## Pinned Termux:X11 build input

The [x11-core-fa3a8b430e28 set](https://github.com/HezeAI/termux-jobs-components/releases/tag/x11-core-fa3a8b430e28) mirrors the **unchanged** upstream Termux:X11 APK from commit `fa3a8b430e2896a19f44c99a9cb056254615ae06`. This prevents a mutable upstream nightly URL from breaking reproducible application builds. The fork extracts its ARM64 `libXlorie.so` into the application APK at build time; end-user desktop startup does not download this build input. Installing XFCE still uses the selected environment’s distribution packages. Existing APKs, renderer choices and published component assets are unchanged.

- Build input: `termux-x11-universal-debug-fa3a8b430e28.apk`,14,693,944bytes, SHA-256 `64995746d1887a0e70bc8977d4a9c5ea56e3e00eadd4a6eeab32ae6048ba733a`.
- Extracted ARM64 core SHA-256: `8ad76408710c21b9a61d3db07900e5bb4e3f88efb1670ac0ff3a2166f403567d`, byte-identical to the previous app runtime. This mirror does not update or rebuild that core.
- [Upstream sources](https://github.com/termux/termux-x11/tree/fa3a8b430e2896a19f44c99a9cb056254615ae06), GPL-3.0. Credit: the Termux:X11 project and its contributors. Bundled native dependencies retain their own licenses.
- `termux-x11-fa3a8b430e28-sources.tar.gz` contains the unmodified exact upstream Git tree and all16 pinned native submodule trees, with their licenses/build scripts. It exports Git objects, excluding local changes, Git databases, build products and private device files. The upstream public test signing fixture is omitted; generate an independent debug key and configure `signingConfigs.debug` before rebuilding.
- [Validation](sets/x11-core-fa3a8b430e28/validation.json), [manifest and hashes](sets/x11-core-fa3a8b430e28/components.json), [source revisions](sets/x11-core-fa3a8b430e28/source-manifest.json), [GPL license](licenses/Termux-X11-GPL-3.0.txt).

The upstream APK is preserved as an original build artifact, including its original signature. It is not the Termux Job’s application update. Only the download location changes; the reviewed byte length, SHA-256 and embedded source commit remain mandatory checks.

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

The complete [graphics-20261025 release](https://github.com/HezeAI/termux-jobs-components/releases/tag/graphics-20261025), its tag, assets and original download URLs are preserved. It remains the component set used by public Termux Job’s v2.0.6 and contains the retained Termux packages. The redundant `mesa-26.2.5-test1` experimental release was removed at the developer’s explicit request after private test2 migrated to stable `mesa-26.2.5` URLs. Its Git tag/history remains for provenance. Older private test1 APKs need test2 for uncached component downloads; already verified local runtimes remain usable offline. Stable Mesa and graphics-20261025 assets/checksums were not changed.

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

## Optional Local AI model weights

[Local AI models v1](https://github.com/HezeAI/termux-jobs-components/releases/tag/local-ai-models-v1) mirrors five pinned GGUF files (the original four plus one optional Q4_0 variant) for the private Local AI preview of Termux Job’s. Existing graphics releases and their download URLs are unchanged. These are optional model downloads, not an app update, and are not included in the APK.

| Model | Quantization | GGUF bytes | Publisher |
| --- | --- | ---: | --- |
| Qwen3.5-9B | Q6_K | 7,458,301,152 | [unsloth/Qwen3.5-9B-GGUF](https://huggingface.co/unsloth/Qwen3.5-9B-GGUF) |
| Qwen2.5-Coder-7B-Instruct | Q5_K_M | 5,444,831,232 | [Qwen/Qwen2.5-Coder-7B-Instruct-GGUF](https://huggingface.co/Qwen/Qwen2.5-Coder-7B-Instruct-GGUF) |
| Qwen2.5-Coder-7B-Instruct | Q4_0 | 4,431,390,720 | [Qwen/Qwen2.5-Coder-7B-Instruct-GGUF](https://huggingface.co/Qwen/Qwen2.5-Coder-7B-Instruct-GGUF) |
| Qwen2.5-Coder-14B-Instruct | Q4_K_M | 8,988,110,272 | [Qwen/Qwen2.5-Coder-14B-Instruct-GGUF](https://huggingface.co/Qwen/Qwen2.5-Coder-14B-Instruct-GGUF) |
| Qwen3-14B | Q4_K_M | 9,001,752,960 | [Qwen/Qwen3-14B-GGUF](https://huggingface.co/Qwen/Qwen3-14B-GGUF) |

Original models: **Qwen**. The Qwen3.5 GGUF quantization is published by **Unsloth**; the other selected GGUF files are published by Qwen. Each upstream repository identifies its model license as **Apache-2.0**. Exact upstream revisions, original filenames and complete-GGUF SHA-256 values are recorded in [the catalogue](local-ai-models-v1/catalogue.json). The model manifest and license notices are also included as release assets. No model weights are stored in Git history.

Each release asset must be smaller than GitHub’s 2 GiB limit, so a GGUF is distributed as numbered raw binary parts of at most 1,900,000,000 bytes. These are **byte segments, not GGUF shards or ZIP archives**. The app resumes them into one GGUF, validates the complete file against the pinned upstream SHA-256, and only then makes it available for inference. The [verified manifest](local-ai-models-v1/models-manifest.json) lists each segment’s byte count, SHA-256 and final asset URL. All four complete-file hashes were checked against their pinned upstream hashes; GitHub’s digest of each of the 17 uploaded parts was also checked. These acquisition checks do not claim phone inference or model-quality validation. Do not select a single `.partNN` file as a model.

The preview uses an Android ARM64 CPU inference engine; these files do not imply GPU/NPU acceleration or guaranteed coding performance. Model weights, KV cache and runtime buffers all require RAM. In particular, 14B models may not fit with a large context on devices with about 10 GB available RAM. Only the selected model is downloaded, and one model is active at a time.

### Optional Q4_0 candidate for accelerator testing

The developer authorized appending **Coder 7B Q4_0** to the same models-v1
release. The original 19 assets, their IDs/digests, URLs and four-model manifest
remain unchanged. Three uniquely named raw segments and separate
`npu-models-extension-v1.json` / `LOCAL-AI-NPU-MODELS-NOTICES-v1.txt` assets were
added; the previous graphics release remains latest. See the
[Q4_0 extension manifest](local-ai-models-v1/npu-models-extension-v1.json).

Source: **Qwen/Qwen2.5-Coder-7B-Instruct-GGUF**, revision
`13fb94bfda8c8cf22497dc57b78f391a9acb426a`, file
`qwen2.5-coder-7b-instruct-q4_0.gguf`, Apache-2.0. This is the publisher's GGUF,
not a requantization of the previously mirrored Q5_K_M file. Complete-file
SHA-256: `8561411b4705cbf2d105cf8e2084c6d6f1bcaba415249ce65fc5f21230d4961b`.
The 4,431,390,720 bytes and complete hash were verified on the isolated transfer
worker; GitHub verified each segment's digest. Public unauthenticated range URLs
were checked and the first segment has GGUF magic. No weights enter Git history.

Q4_0 is added as an **NPU-format candidate**, not a claim of completed Android
Hexagon inference validation or guaranteed speed. The private application work
adds explicit CPU/OpenCL/Hexagon choices; the previously distributed application
continues using its existing CPU runtime and unchanged model URLs. Accelerator
operator/device compatibility and partial CPU execution require testing.

## Pinned initial X11 desktop packages

The [`xfce-base-20261028` set](https://github.com/HezeAI/termux-jobs-components/releases/tag/xfce-base-20261028) supplies original distribution package files for the first XFCE installation and missing-component repair. It complements the separately pinned base images; it does not replace an existing rootfs. The catalog fixes every archive size, SHA-256 and internal package manifest. Package managers resolve the offline transaction against the selected environment's own database.

**This is an initial baseline, not a permanent version lock.** Official package repositories stay enabled. Users can install Python, libraries and other programs, change XFCE and explicitly update their environment. Ordinary launches check required components rather than exact version equality. More recent installed packages are retained during repair; incompatible dependency plans fail instead of forcing removals or downgrades. Ordinary recommended applications remain separate native package-manager installations. A future update/snapshot/rollback UI is not part of this set.

The small `host-audio` and `host-virgl` archives provide Android/Termux-side prerequisites without installing Termux XFCE for a guest desktop. Ubuntu AI intentionally retains its upstream agent-environment policy. Manjaro ARM currently supports CPU and VirGL only: its pinned glibc 2.35 base cannot load the private Mesa/bridge binaries requiring glibc 2.38 or newer.

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
