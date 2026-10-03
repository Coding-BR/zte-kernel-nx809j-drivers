# gpio_keys_attr_show_helper exact offline attestation

The candidate `gpio_keys_attr_show_helper` body is a 320-byte AArch64 materialization. Strict opcode/relocation comparison against a local stock extraction, direct stock/candidate KCFI extraction, Joern, two canonical module builds, and two ASan/UBSan host repetitions passed. Both stock and candidate have no valid KCFI preamble because the preamble detector overlaps the function body; no type ID is claimed. Controlled NX809J hardware validation remains deferred.
