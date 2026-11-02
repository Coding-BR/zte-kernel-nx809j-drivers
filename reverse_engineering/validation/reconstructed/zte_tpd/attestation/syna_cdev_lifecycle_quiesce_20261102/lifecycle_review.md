# zte_tpd cdev lifetime review

Generated: 2026-11-02T20:56:06Z

## Finding

The stock teardown could drain and destroy the cdev frame list while the IRQ path was still able to dispatch reports into it. Open file descriptors also retained callbacks that dereferenced the global TCM pointer after device removal. The ioctl implementation has two timeout waits, so holding a lifecycle mutex across a callback could delay teardown for a userspace-selected interval.

## Change

- Added generation-checked `device_fops` wrappers and an in-flight operation counter. Callbacks release the lifecycle mutex before entering the existing operation body.
- Quiesce marks the device offline, invalidates old file descriptors, wakes the frame waitqueue, and drains active callbacks. The two exact ioctl wait loops now detect shutdown and take their timeout cleanup path.
- `syna_cdev_remove` now quiesces and disconnects the IRQ before freeing frame-list and cdev state. Existing caller disconnects remain safe because disconnect is idempotent.

## Validation

- Curated Docker source synchronization: **PASS**.
- Canonical Docker build: **PASS**, two independent cycles; both produced SHA-256 `ab4d614ba94727c10f660d8732af49f3b3d7b7af9102934cbd315b89ee50d3cf` (6,311,496 bytes).
- Static `llvm-objdump` audit: **PASS**, four lifecycle-flag relocations across both wait loops route offline execution to `finish_wait`; the excerpts are preserved in `ioctl_wait_disassembly.txt`.
- Target vermagic: **accepted** (`6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`).
- No host or hardware runtime test was run for this batch.

Detailed hashes and Ghidra references are in [`lifecycle_review.json`](lifecycle_review.json); the canonical build evidence is in [`canonical_build_report.json`](canonical_build_report.json).

## Scope limits

The separate `input_agent` misc-device `zte_fops` path remains to be audited. NX809J runtime and hardware validation remain deferred.
