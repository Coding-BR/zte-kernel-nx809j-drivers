# Synaptics reflash workqueue allocation guard

`syna_dev_connect` preserved the 1004-byte stock AArch64 body but passed the
result of `alloc_workqueue("syna_reflash")` directly to
`queue_delayed_work_on()` with a nonzero delay. If allocation returned NULL,
the delayed-work timer could be armed with a NULL workqueue.

The active body now routes that one queue call through a NULL guard. The
connect wrapper then detects the missing queue, invokes the reconstructed
disconnect path to release the IRQ and input device, deregisters `input_agent`,
and returns `-ENOMEM` so probe rollback can continue. The normal success path
still calls the stock queue API with the original CPU, work item, and delay.

Validation used the canonical Docker build twice. Both cycles produced
SHA-256 `546aad16f46e1f5c9fd6914854967aca3a253642b394d117e005cddd7a37f4c7`
(7,157,696 bytes), with the expected Android 16 / Linux 6.12.23 vermagic and
no diagnostics. The `syna_dev_connect` KCFI type ID matched stock (`0xae20471c`);
function size differs because the active symbol is a hardened wrapper.

No kernel runtime or NX809J hardware execution was performed.
