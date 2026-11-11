# zte_sensor_sensitivity snapshot reconciliation — 2026-11-11

The versioned tree was synchronized to Docker curated: 15 files copied (12 exact assembly includes and three documents), none removed. The follow-up hash sync found no remaining differences.

Two clean canonical Docker builds produced the same module SHA-256 `0a026041dc5dbff0d0ef21881398cdb2bd943b51b683d797a7c8b6eb80566d45` (245,368 bytes), matching the existing map and candidate. The validator reports `static_verified`; all 21 Ghidra functions are present and traceable, mapping review, kernel identity, imports/aliases, runtime content, section layout, and modinfo pass.

No hardware test or additional candidate promotion was performed. Independent review and final gates remain pending; this result does not claim full behavioral equivalence or device readiness.

Evidence files: source and status sync reports, `docker_validation.json`, and `.md`.
