# RDBG SMEM handle rebind serialization (2026-11-11)

## Result

The repeated-probe handle leak and the unsynchronized publication of the SMEM bit/handle are addressed in the current offline candidate. Two clean canonical Docker builds produced the same module SHA-256: 398986ee7560c4e61e1849583eb42efea1f37fd5d746003d0e202fd758853f35 (788,976 bytes).

The driver remains incomplete and has not been tested on the phone.

## Change

rdbg_probe now uses the module-wide rdbg_smem_state_lock while qcom_smem_state_get writes the bit, the returned state pointer is published, and the prior handle is released. rdbg_write holds the same lock while reading the bit/pointer pair and calling qcom_smem_state_update_bits. A failed lookup leaves the prior pointer intact and returns the lookup error. Init-failure and module-exit cleanup release current handles under the same lock.

This treats the state handle as module-owned because the character device is module-wide and remains present across platform unbind. The prior handle remains referenced until a successful reprobe replaces it or module exit releases it. This static ownership policy does not prove the complete unbind/rebind behavior: the driver still has no per-device remove callback, and input IRQ/open-file behavior remains unverified.

## Validation

- Docker kernel source commit: 3356b35306d35d5a480e3b63df1a9f065b5d9f55; image ID sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390.
- Two clean builds matched byte for byte.
- KCFI type IDs matched for 8/8 functions.
- Strict assembly comparison: on_interrupt_from remains stock-exact; the other 7 function bodies are declared hardening deviations in the map.
- Target vermagic and all KMI CRC checks passed. Import parity remains incomplete because the candidate imports free_irq, platform_driver_unregister, and qcom_smem_state_put; the correction adds no import relative to the previous candidate.
- The repository and canonical curated Docker source/map/status/module match.
- adb devices -l returned no attached device. No phone, module-load, unbind/rebind, or host-harness test was run.

Machine-readable evidence: review.json, docker_validation.json, assembly_comparison.json, kcfi_comparison.json, and abi_audit.json.
