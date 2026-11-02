# haptic_86938 current candidate assembly and callback review

Date: 2026-11-02. Candidate SHA-256: `175f305a0f7d4348bed2a6db8eb901ddfb3f3eaa59d844ececd861f25e23a34c`; stock SHA-256: `05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e`. The repository, Docker curated module, map and canonical inventory agree on these hashes.

Fresh extraction and comparison covered all 160 mapped functions. **158 match stock exactly** in instruction bytes, relocations, section and size. `aw8693x_container_update` and `aw8693x_offset_cali` differ only in unsigned adjacent-boundary predicate encodings; relocation, section and size checks pass, and the accompanying predicate reports have no unresolved differences. The strict binary comparison correctly remains false for those two functions.

A fresh ELF relocation check confirms `richtap_misc.fops` points to `left_fops` in both modules. The stock and candidate ioctl slots at `left_fops + 0x50` point to `richtap_file_unlocked_ioctl`; the mmap slots at `+0x60` point to `richtap_file_mmap`. Both functions match stock in size and assembly. This supersedes older data reports describing the earlier candidate as missing those callbacks.

The current-snapshot review confirms `awrw_show` and `awrw_store` are restored to stock-exact bodies, with no active AWRW hardening deviation. The driver remains **INCOMPLETE**: the source tree uses partial C microtasks, function identity/assembly checks do not prove whole-driver C semantics or runtime safety, no distinct human whole-driver reviewer is named, and concurrency/sanitizer/hardware gates remain open.

`mapping_review.json` binds the results to the stock, current candidate, map, current source snapshot and canonical Docker audit.
