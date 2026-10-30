# `tpd_zlog_record_notify` — offline exact revalidation 2026-08-31

This package records the clean revalidation of stock function
`tpd_zlog_record_notify` at `00106998` with an ELF symbol size of 3452 bytes.

The Docker `zte_tpd_canonical` adapter built the reconstructed source in two
clean cycles with identical module bytes. Relocation-aware AArch64 comparison
passed for 863 instructions; KCFI passed with type ID `0xcc3d7e08`; strict
Joern scope and slice passed; and the existing direct ASan/UBSan zlog harness
passed 10/10 cases in two repetitions.

Ghidra 12.1.2 was rerun on the exact candidate module after repairing the
function body and importing `zlog_client_record` and `zlog_client_notify` as
external functions. Its P-Code operation shape and body size match stock. The
normalized C remains affected by Ghidra's external-label control-flow artifact;
the explicit fallback records this fact and requires the independent assembly
parity gate. This is not a claim of hardware or Android runtime equivalence.

The protocol reports `promotion_authorized=false`. Physical smartphone,
Android zlog transport, SPI, IRQ and touch-controller behavior remain outside
this offline attestation.
