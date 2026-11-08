# Pinned X11 musl build headers — 1.2.6-r2

Original Alpine aarch64 musl-dev1.2.6-r2, used only for compiling the existing
Alpine/PRoot compatibility module. Not an Android APK installer, guest package
update or runtime component. The ordinary Alpine image/XFCE archives are separate.

Alpine removed this package revision from its live v3.24 mirror. The previous
application release used the same URL/hash and existing verified local build inputs.
This set preserves the original cached APK byte for byte, without newer headers or
changes to the application/native libraries. The previous APK hash remains
ca72b84f4eb3c36bbbec04d919eb10159d414c7a43413cc2253841d301fa9486 (2,539,434 bytes).

The release archive includes that unchanged APK, full upstream musl COPYRIGHT,
metadata and a short README. Verify the outer archive and original APK SHA-256.
Place the APK member in `.tools/termux-x11-downloads/` before prepare-x11.py.
Never install it on Android or in an existing user environment for this build task.

musl is developed by Rich Felker and other upstream contributors, under MIT and
retained per-file notices. COPYRIGHT is unmodified from upstream v1.2.6. Alpine
package origin: aports commit f5640d3a10f664c9119720c60515265d3d6f6d01.
Package signatures remain in the original APK; this packaging check verifies
trusted existing SHA-256 pins rather than independently validating the signature.

[Exact metadata](component.json) · [Upstream musl](https://git.musl-libc.org/cgit/musl/tag/?h=v1.2.6).
No new binary is built. Other published Components remain unchanged; earlier
component-specific license-review gaps are not resolved by this archive.
