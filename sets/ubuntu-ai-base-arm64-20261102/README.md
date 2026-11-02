# Ubuntu AI ARM64 base — 2026-11-02

Clean Ubuntu 26.04.1 LTS linux/arm64 OCI archive. This is a separate download asset for new Ubuntu AI installations, using the same immutable upstream blobs as the previously published Ubuntu base. No phone rootfs, accounts, projects, desktop or agent CLI is included.

The application verifies SHA-256, then installs this **local archive** with its separate proot-distro5.9.0 copy. Installation does not contact Docker Hub. Component recipes run after Ubuntu is ready. Existing Ubuntu AI environments are not replaced or rebased. The choice of5.9.0 is not a proven fix for the reported network failure.

Source: [official Ubuntu image](https://hub.docker.com/_/ubuntu), ARM64 manifest `sha256:86eb1bc1059720a19a777ba5a109e9ee3690d5dfe3e319871a6d6beb86fb7f85`. Archive:41,144,320bytes. Hashes and provenance: components.json and SHA256SUMS. [Licenses and sources](../../licenses/pinned-rootfs.md).

Validated every OCI blob digest, architecture, and complete extraction/fixups with the real5.9.0 public install API while network calls were forbidden. The CLI entry point was not executed: the current proot context refuses nested proot. Native Termux startup, dependency transactions, four-agent first launches and another-phone acceptance remain pending. See validation.json; archive validation is not end-to-end device acceptance.

AI development assistance: OpenAI Codex
