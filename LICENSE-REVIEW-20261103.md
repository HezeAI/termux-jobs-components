# License/source review — 2026-11-03

This is a component-specific evidence record, not a declaration that every mirrored
package satisfies every license condition or an independent legal/security audit.
HezeAI maintains this independent unofficial mirror/integration. Upstream authors
retain their rights; no Termux, distribution, driver or model-owner endorsement is
claimed. Existing binary assets, URLs, names, byte lengths and SHA-256 remain unchanged.

## Confirmed Ubuntu AI source coverage

Published binary: `ubuntu-ai-base-arm64-20261102/ubuntu-ai-arm64.oci.tar`,
41,144,320bytes, SHA-256
`c08828893609894e5ab6d80f146961961148afde007ce904292418d8fcd011e0`.
The identical Ubuntu base blobs are also used by `rootfs-arm64-20261028/ubuntu-arm64.oci.tar`.

All87 installed binary packages were inventoried, mapped to58 exact source-package
versions and their copyright records preserved. All58 DSC files were downloaded
and Source/Version checked. All127 referenced source files were downloaded:
348,117,257bytes, each matching its DSC length and SHA-256. This includes source
archives and distribution patches/build packaging, not just upstream homepages.
DSC signatures and reproducible package builds were not independently verified.

- [Corresponding source archive](https://github.com/HezeAI/termux-jobs-components/releases/download/ubuntu-ai-base-arm64-20261102/ubuntu-ai-corresponding-sources-20261103.tar):350,515,200bytes; SHA-256 `381789f23e732160e671f064b4e13f4f0ffa99b29b3b47199bed6d9970e718cf`.
- [Exact package/source/license inventory](sets/ubuntu-ai-base-arm64-20261102/source-inventory-20261103.json).
- [Source checksums](https://github.com/HezeAI/termux-jobs-components/releases/download/ubuntu-ai-base-arm64-20261102/ubuntu-ai-sources-20261103.SHA256SUMS).

The tar contains the58 DSC files, all127 original source files, all87 package
copyright records and the image's common-license texts. Package-specific terms
remain in those texts; mixed subfile terms are not flattened into one image license.
GPL-covered source access, LGPL library source/patches and permissive notices must
be considered separately. The new bundle repairs the previous generic-only source
directions for these exact image contents. Existing object-code resources were not
rebuilt/replaced. Source archives are separate manual downloads, not app installation
payloads. Anonymous source-asset download length/SHA checks passed.

## Other published components and remaining work

[Asset inventory](LICENSE-ASSET-INVENTORY-20261103.json) identifies every pre-existing
published asset by exact name, URL, ID, length and SHA-256, with available version/
source metadata and its review scope. All129 pre-existing asset identities were
captured before additions. Inventory is not proof of each internal file's license.

- Termux:X11 `fa3a8b430e2896a19f44c99a9cb056254615ae06`: GPL-3.0 text, exact source
  tree and16 pinned native submodule trees are separately published in the same set.
  The upstream debug APK and its extracted native core retain upstream authorship.
- Mesa26.1.6/26.2.5 and Jobs builds: exact upstream source, adaptation patches,
  build recipes and license collections are separately listed in set manifests.
  libhybris/WSI and Debian lm-sensors have separate license/source collections.
- The optional `Turnip-a6xx-a7xx-a8xx.zip` remains the developer-supplied StevenMXZ
  distribution, with GameHub/Mesa26.3.0-devel-b00479181d metadata. Its native bytes
  were not made by this fork. Full compiler-input/subcomponent provenance for that
  imported build remains unverified; a generic Mesa link is not an exact-build proof.
- Other `rootfs-arm64-20261028` images and `xfce-base-20261028` package archives:
  names/versions/hash manifests and embedded distribution notices exist, but exact
  per-package source-archive access, checksums and all license conditions have not
  been verified in this pass. They are explicitly outside the87/58/127 result.
  Concrete remaining binaries include `debian-arm64.oci.tar`, `alpine-arm64.oci.tar`,
  `fedora-arm64.oci.tar`, `opensuse-arm64.oci.tar`, `void-arm64.oci.tar`,
  `kali-arm64.oci.tar`, `archlinux-arm64.tar.xz`, `manjaro-arm64.tar.gz` and each
  `xfce-<target>-arm64.tar` in the asset inventory. Before further revisions or
  redistribution clearance, map each copyleft package to its exact source/patches
  and verify complete source access/checksums. Existing generic directory links
  are not counted as that verification. No existing resource is silently replaced.
- Qwen model parts retain exact model repositories/revisions and Apache-2.0 metadata
  in the model manifest, with separately published notices. This pass inventories
  those records; it does not re-download tens of gigabytes of weights or certify
  every upstream model-training/data right. GPU/fonts/icon/theme package notices
  remain component-specific; distribution labels are not blanket licenses.

This record distinguishes a confirmed source-direction gap now repaired for Ubuntu
from remaining unverified coverage. It does not label all remaining packages illegal
or claim full compliance. Any identified file-specific unmet condition must be fixed
before further publication of that component, using additional notices/sources rather
than replacing an immutable binary. License requirements are authoritative:
[GPLv3 §6](https://www.gnu.org/licenses/gpl-3.0.en.html#section6),
[GPLv2 §3](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html#section3).

AI development assistance: OpenAI Codex
