# Historical RAM firmware callback review — candidate 37FC8692

This review and its JSON evidence are bound to candidate `37fc86926a32dc3bd170d3c673a9adef3bdb4b48ff90eff1bff2a80af59caeca`. It is retained as a historical record and does not describe the current module.

The callback counter, completion path, firmware-loader references, and remove-time drain described in [the historical report](ram_firmware_current_candidate_revalidation.json) remain the basis for the callback-lifetime review. A later stock/Ghidra control-flow check found that the initial delayed RAM worker could execute before probe publication when probe setup exceeds its initial delay. The current candidate adds a probe-completion gate and is documented in the [candidate 53EE12EE probe/retry revalidation](../haptic_ram_work_probe_guard_revalidation_20261103/README.md).

The historical module remains distinct from the current candidate. Runtime callback timing, allocation-fault injection, unbind races, and NX809J hardware behavior have not been verified.
