# xfce-base-20261028

## Pinned initial X11 desktop packages

The [`xfce-base-20261028` set](https://github.com/HezeAI/termux-jobs-components/releases/tag/xfce-base-20261028) supplies original distribution package files for the first XFCE installation and missing-component repair. It complements the separately pinned base images; it does not replace an existing rootfs. The catalog fixes every archive size, SHA-256 and internal package manifest. Package managers resolve the offline transaction against the selected environment's own database.

**This is an initial baseline, not a permanent version lock.** Official package repositories stay enabled. Users can install Python, libraries and other programs, change XFCE and explicitly update their environment. Ordinary launches check required components rather than exact version equality. More recent installed packages are retained during repair; incompatible dependency plans fail instead of forcing removals or downgrades. Ordinary recommended applications remain separate native package-manager installations. A future update/snapshot/rollback UI is not part of this set.

The small `host-audio` and `host-virgl` archives provide Android/Termux-side prerequisites without installing Termux XFCE for a guest desktop. Ubuntu AI intentionally retains its upstream agent-environment policy. Manjaro ARM currently supports CPU and VirGL only: its pinned glibc 2.35 base cannot load the private Mesa/bridge binaries requiring glibc 2.38 or newer.

| Target | Packages | Archive bytes | SHA-256 |
|---|---:|---:|---|
| alpine | 377 | 315484160 | `4b9a2ed83006c388e05304d925fb67da179652ef771ae4194ea74a50ef5a7f36` |
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
