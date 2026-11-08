# RTK OSS 1.1.0-jobs.1 

This is a separately versioned Termux Job’s build of RTK OSS 1.1.0, maintained by
HezeAI. Upstream: rtk-ai/rtk, exact commit in upstream.json. Not endorsed by RTK.
Apache-2.0. Build with --no-default-features: the BUSL engine is not linked.

The patch measures the captured pre-filter buffer and actually emitted text inside
the shared runner capture path, without executing a command twice. An optional
private JOBS_RTK_BYTES_FILE sidecar stores byte lengths and SHA-256 hashes, never
output contents. Sidecar failures do not change output, filtering or exit status.
Head/tail windows retain their selected-window baseline; recall is counted only
when a subsequent tool result returns it. Recall storage is never the baseline.

Coverage: the shared captured runner (including ls/wc), normal git status/diff/log,
captured grep/rg and rg file lists, full text reads and identity head/tail windows.
The diff baseline excludes RTK’s separately generated stat decoration. Existing
Git decoration/probe calls are unchanged; measurement adds no command execution.
Uncovered streaming/complex paths remain unknown unless separately verified. Invalid decoded text and unmatched or
ambiguous tool results remain unknown. ls itself requests a long child listing;
the pre-filter bytes measure that actual RTK child output, not a rerun of bare ls.

The application verifies the archive and binary hashes, version, architecture,
LICENSE and dependency notices. Installation uses a new version directory. Old
binaries and per-chat state/recall are retained; running chats are not restarted.
After installing this update, restart the selected chat normally to load its hooks.
Download failures leave the old working version available. No binary is replaced
in place. An already valid installed candidate is reused.

Future updates must retain this patch or a compatible v1 byte-event interface,
rerun the single-invocation/recall/upgrade/isolation checks, and publish a new
immutable component version. A stock RTK binary cannot masquerade as this build.
Keep patched exact sources, Cargo.lock, build instructions and license notices
beside the release archive. Source archives are manual downloads, not app assets.

Isolated build and update validation is recorded in validation.json. Source-archive documentation reflects its preparation snapshot; this repository contains the current release notes.

Component identity uses upstreamVersion1.1.0 plus componentRevision jobs.1 and
independent archive/binary SHA-256 pins. The runtime version has the jobs.1 suffix.
Rust standard-library copyright/license material is retained beside Cargo notices.
The manual source archive includes the upstream workspace (including optional
engine source under its own license); engine code is excluded from this OSS binary.
Stock `rtk gain` remains its native token estimate. Exact bytes are a separate
v1 consumer protocol; no billing or subscription-limit saving is claimed.

Performance validation compares the official binary, the custom binary with
measurement disabled, and the same custom binary with measurement enabled, on
identical synthetic inputs. Large-output and raw trial results are reported
separately; mobile CPU frequency and timing noise are not controlled.
