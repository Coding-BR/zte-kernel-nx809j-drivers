# aw22xxx_fw_timer_func exact-island attestation

Status: PROMOTED_OFFLINE_EXACT.

This attestation binds stock aw22xxx_fw_timer_func@001051e8 to the reconstructed zte_led candidate. The exact island preserves the 80-byte/20-instruction AArch64 hrtimer callback, printk, queue_work_on(system_wq, fw_work), callback container offset and HRTIMER_NORESTART return.

Validation used the Docker snapshot/toolchain for two clean reproducible cycles. Assembly/relocation and fresh Ghidra C/P-Code comparison passed, Joern scoped/slice and KCFI passed, and the host harness passed reproducibly with 58/58 covered functions.

The result is offline/static evidence only. Hrtimer/workqueue runtime behavior, sanitizers, lifetime ledgers, counterexample search and independent hardware/runtime review remain deferred.
