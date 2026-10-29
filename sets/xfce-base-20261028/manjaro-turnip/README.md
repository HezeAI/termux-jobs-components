# Manjaro ARM Turnip + Zink

Mesa **26.2.5** built against **glibc2.35/GCC12** with the existing
[lfdevs Android container adaptations](https://github.com/lfdevs/mesa-for-android-container)
at commit98f3d6229d61452cef80f8563af7c56ae599dc14. This is a separate runtime
for Manjaro, not the Bionic-for-glibc bridge or a replacement for system Mesa.
Other existing asset bytes, URLs and pins are preserved.

[Complete source, patch, recipes, licenses and package pins](https://github.com/HezeAI/termux-jobs-components/releases/download/xfce-base-20261028/manjaro-turnip-26.2.5-sources.tar.gz).
Mesa contributors retain original copyrights and per-file licenses (primarily
MIT, with SGI-B and other notices in the complete source). Existing Android/KGSL
patch credit belongs to lfdevs and upstream contributors. HezeAI maintains the
isolated Termux Jobs integration with OpenAI Codex assistance.

The packaged ARM64 libraries passed immediate symbol resolution with the pinned
clean Manjaro image/desktop libraries and glibc2.35 loader, with no host fallback.
This is not Android GUI/GPU rendering validation. Actual Adreno compatibility
and performance require phone tests. No Bionic/vendor driver is included.
