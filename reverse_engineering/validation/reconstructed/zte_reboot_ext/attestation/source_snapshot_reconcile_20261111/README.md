# zte_reboot_ext snapshot reconciliation — 2026-11-11

The versioned source tree was synchronized to the canonical Docker curated tree: nine files copied (six exact assembly includes and three microtask documents), zero removed. A follow-up hash sync found no remaining differences.

The canonical validator rebuilt the module twice. Both fresh builds produced SHA-256 `a6a823e3a35abc50292883f43951838b8715ed851da5d27304ebe94c68f498a2` (242,336 bytes). Ghidra evidence and traceability cover all 14 functions; mapping review, target kernel identity, strict imports/aliases, runtime content, section layout, and modinfo pass. The current candidate remains bound to `42ef53dce4e2b7decf091877ef395b35250045aae0dd159f21a526d6002672e0`; its full-file hash differs from the fresh module in build-id metadata and/or debug/BTF sections, while runtime content, layout, and modinfo match.

The validator returns `static_verified`. The candidate was not promoted. Independent review, final promotion gates, and hardware testing remain pending; no device behavior or total semantic equivalence is claimed.

Evidence files: `curated_sync_dryrun.json`, `curated_sync_applied.json`, `curated_sync_verified.json`, `docker_validation.json`, and `.md`.
