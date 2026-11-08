#!/usr/bin/env bash
set -euo pipefail
# Run in the extracted corresponding-source tree (already patched), Ubuntu ARM64.
# Rust 1.91.0; GNU C toolchain; Cargo.lock is authoritative.
# Use a task-local CARGO_HOME and CARGO_TARGET_DIR. No engine edition.
cargo build --release --locked --no-default-features --bin rtk
cargo tree --locked --no-default-features -p rtk > dependency-tree.txt
"${CARGO_TARGET_DIR:-target}/release/rtk" --version
# Required result: rtk 1.1.0-jobs.1
# Preserve runner sidecar tests and loader/upgrade tests before publishing updates.
