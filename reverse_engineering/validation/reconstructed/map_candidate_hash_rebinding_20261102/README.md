# Candidate hash rebinding — 2026-11-02

The four maps named the hash of an older module even though the current module was already committed and independently audited. For each driver, the existing 2026-10-03 audit reports `static_verified`, its candidate hash equals the current `.ko`, and its two clean Docker builds are byte-identical. The maps now bind that current candidate hash.

This changes only `candidate_sha256` in the maps. No candidate module, source function, microtask status, or promotion state changed. Hardware validation and independent human review remain separate gates. The detailed paths and hashes are in `source_reconciliation.json`.
