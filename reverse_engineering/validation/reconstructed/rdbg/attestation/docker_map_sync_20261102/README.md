# RDBG Docker map synchronization — 2026-11-02

The Docker curated map was stale: its `init_module@00101638` evidence pointed to `candidate_ghidra_v22` and `protocol_core_v23`, while the versioned repository map points to `candidate_ghidra_target_20261101` and `protocol_core_v30`. The Docker snapshot now matches the repository map byte for byte.

The candidate `.ko` in both locations has SHA-256 `7b8ec475c9e72c1c016ee66cf9058b3db2425828e158f27738173e563abbae70`; this hash is now declared in the map. All eight stock identities are unchanged. Seven functions remain `implemented_pending_independent_review`, and `init_module` remains `candidate_under_static_validation`. No function was promoted and no hardware result is claimed.

The repository inventory now reports 4/4 Docker candidates, maps, and Kbuild input sets matching the repository. This synchronization does not establish full-driver static or semantic verification.
