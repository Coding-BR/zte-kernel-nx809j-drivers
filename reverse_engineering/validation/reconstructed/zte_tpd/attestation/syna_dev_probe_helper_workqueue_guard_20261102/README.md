# Synaptics probe helper workqueue failure rollback

The exact `syna_dev_probe` body allocated the `synaptics_tcm_helper` workqueue
at `tcm+0x548` but returned success even when allocation failed. The reset
callback then declined to enqueue helper work, leaving the device bound
without unexpected-reset recovery.

The exact body is retained under `syna_dev_probe_stock_exact`. A public wrapper
checks the helper queue after successful probe. If it is absent, the wrapper
uses the existing `syna_dev_remove` path to drain work and release the cdev,
IRQ, input agent, and TCM resources, clears platform drvdata, and returns
`-ENOMEM` so the device core can retry or report probe failure. The regular
success path remains unchanged.

Two canonical Docker cycles produced identical modules with the expected
Android 16 / Linux 6.12.23 vermagic and no diagnostics. KCFI type ID
`0xc7f8c87c` matches stock. No runtime or NX809J hardware test was performed.
