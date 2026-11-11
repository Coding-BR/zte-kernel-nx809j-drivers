# Netlink socket lifetime hardening

The source now serializes `nl_sk` publication, use, and release. This addresses the race where `sendnlmsg()` could pass a non-NULL check and then call `netlink_unicast()` while `netlink_exit()` released the same socket. The target kernel implementation reads the sender socket during unicast and releases it through `sock_release()`.

The calls to `sendnlmsg()` run from the threaded fingerprint IRQ and the DRM/MSM display commit path. The audited call paths execute in sleepable context, so the mutex is usable there. The Netlink receive callback does not take this mutex; it uses `READ_ONCE/WRITE_ONCE` for the shared PID.

## Validation

- Docker source synchronization passed for the canonical `curated/zte_fingerprint` tree.
- Two clean builds against the pinned NX809J kernel identity produced identical module SHA-256 `3cd6ed3765cb159e2aab87ea0ed48f72b4e5dd4319ba4cea5362ff57e39e7d34` (397,880 bytes).
- Assembly was extracted and compared for all four changed functions. The comparison reports the expected instruction and relocation differences; these functions are not stock-exact, and the comparison is not a semantic proof.
- The full validator remains `incomplete_or_failed`: the curated `.ko` is stale, import/content/layout parity is unresolved, and independent review is pending. No module was promoted.
- The host harness and phone lifecycle test were not run in this batch.

The source map records these four functions as `candidate_hardening_deviation`, with independent review pending. This change only protects the socket lifetime while sending. The separate stock panel notifier callback race remains open; see [the panel callback audit](../lifetime_sync_panel_callback_race_20261111/README.md).

See [audit.json](audit.json) for source hashes, target identity, call-context evidence, per-function assembly sizes, and remaining gates.
