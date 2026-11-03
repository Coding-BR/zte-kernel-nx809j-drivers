# Current-candidate function revalidation

This review re-extracts `tpd_set_screen_off_awake` from the current repository candidate and runs the versioned function comparator against the preserved stock assembly manifest. Both repository and Docker modules bind to SHA-256 `adaccd92…`.

The function matches stock at entry `0012ca1c`: 22 AArch64 instructions, 88 bytes, identical relocation semantics, `.text` section, and symbol size. The previous review bound to module `5c63a4e7…` remains historical; this attestation updates the map's current-candidate binding.

This is one-function offline evidence. It does not establish whole-driver equivalence or runtime/hardware behavior.