# ftmmod MP0-MP6 stock microproof drafts

Generated from stock SHA-256 fe598a656ef1dbbcc48c78b0f9eb94ee1e6fe05c07f4e073f3e1c6470abbc4eb.

Evidence-bound drafts only: no candidate C, no semantic-equivalence claim, and no MP7 authorization.

- MP0 binds 9 functions to Ghidra entries, assembly, P-Code, pseudocode and KCFI IDs.
- MP1 indexes direct calls and supported API/callback signatures; is_secboot_device binary dataflow is now indexed; its original C declaration/signedness remains unverified.
- MP2 records state/memory effects; MP3 records control/error paths.
- MP4 is a test-oracle draft pending L3 approval.
- MP5 records unresolved lifetime/concurrency pending L4.
- MP6 records MMIO/IMEM/QSEE values without assigning unproven hardware meaning; L3 and L4 approval remain required.

Pinned source revision e1ea0289c329945af9422e58256a37f7603fa098. Header hashes and the full llvm-readelf relocation output are preserved alongside these proofs. The protocol plan is still blocked because candidate source is empty.
