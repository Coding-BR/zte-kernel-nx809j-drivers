# ftmmod MP0-MP6 stock microproof drafts

Generated from stock SHA-256 fe598a656ef1dbbcc48c78b0f9eb94ee1e6fe05c07f4e073f3e1c6470abbc4eb.

Evidence-bound drafts only: no candidate C, no semantic-equivalence claim, and no MP7 authorization.

- MP0 binds 9 functions to Ghidra entries, assembly, P-Code, pseudocode and KCFI IDs.
- MP1 indexes direct calls and supported API/callback signatures; is_secboot_device binary dataflow is now indexed; its original C declaration/signedness remains unverified.
- MP2 records state/memory effects; MP3 records control/error paths.
- MP4 is a test-oracle draft pending L3 approval; T14 asserts the opaque `dev` argument and signed-boundary outputs from the observed 32-bit return path.
- MP5 records conditional no-put/no-unmap consequences from pinned kernel and stock ELF evidence. Runtime reachability and concurrency remain unknown; L4 approval is pending.
- MP6 records MMIO/IMEM/QSEE values without assigning unproven hardware meaning. It separates the QSEE descriptor fields from the call's `atomic` argument; L3 and L4 approval remain required.

Pinned source revision e1ea0289c329945af9422e58256a37f7603fa098. Header and source hashes and the full llvm-readelf relocation output are preserved alongside these proofs. The protocol plan is still blocked because candidate source is empty. All current declared MP0-MP6 input hashes have been refreshed; the latest formal review still needs to approve the revised drafts.
