# Byte measurement protocol v1

The application dispatcher allocates a private per-chat/per-run invocation path,
records an argument fingerprint and timestamp, and execs RTK with an owner PID.
The optional JOBS_RTK_BYTES_FILE/JOBS_RTK_BYTES_PID variables enable the exporter.
Nested processes cannot claim the parent event. No new argument or shell prefix
is added to the native command; approval and rule processing stay on their native path.

The verified shared runner captures once, filters once and emits normally. It
writes only raw UTF-8 buffer byte length, emitted byte length/hash and verified
normalization variants. It stores no output or command text. File failures do not
change command results. Multiple captures become an ambiguous event, not a false
measurement. A pre-existing path is rejected. Atomic create_new opens a new sidecar only, and
repeated captures use its held descriptor. PRoot can resolve paths before
O_NOFOLLOW, so that flag alone is not used as the safety boundary.

PostToolUse matches run, argument fingerprint, invocation interval and actual
returned text hash. Unknown or subsequently truncated results remain unknown.
Identical concurrent results with unequal bases are rejected. Replay is idempotent.
Recall receipts count additional returned text; saving output itself adds nothing.
The hash event is a measurement boundary, not an acknowledgement from a cloud service.

Measured: shared captured runner (ls/wc), normal git status/diff/log, captured
grep/rg and file lists, full reads, and selected head/tail windows. Native diff
statistics-decoration output is excluded from the source-command baseline.
The original window is used for head/tail, never the whole file. Unknown: paths without an exporter,
unsupported compound/changed commands, unmatched/ambiguous outputs, replaced or
invalid decoded text. Uncovered examples: streamed search/passthrough, filesystem-generated find lists,
special git-log raw-shape branches with additional notices, filtered/numerically
annotated read windows, and other command families without an exporter. No
universal coverage is claimed.
Old unknown events cannot be recovered retroactively. Display may show the known
measured portion while retaining unknown counts and all old counters in Details.

Pin upstreamVersion and componentRevision separately; verify the binary SHA-256,
archive SHA-256, version, architecture, LICENSE and notices. Future component updates
must preserve this protocol or add an explicitly tested migration. Install into a
new version directory; retain previous binaries and per-chat state/recall. Never
switch a running command in place or restart an agent automatically.

Normalization v1 order is newline-only then trailing-whitespace. Structured
Claude receipts use the matching trimEnd scope. A string receipt with indistinguishable
normalizations and unequal input lengths stays unknown. The exporter computes
ordinary SHA-256 digests in one pass over the output prefix states.
