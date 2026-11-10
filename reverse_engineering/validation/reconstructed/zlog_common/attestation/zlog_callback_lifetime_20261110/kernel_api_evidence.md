# Target kernel API evidence

Target: Android 16 GKI `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`,
source identity recorded in `kernel_development/config/target_kernel.json`.

The canonical Docker kernel tree confirms:

- `disable_delayed_work_sync()` cancels and drains a delayed work item, and is
  exported as `EXPORT_SYMBOL_GPL` with target CRC `0xba6d2f6c`.
- `cancel_delayed_work_sync()` is exported with target CRC `0xba6d2f6c`; the
  kernel documentation says it drains a work item that may requeue itself, but
  only when there are no racing enqueues. The candidate gates the self-requeue
  and stop transition with the same spinlock before calling it.
- `destroy_workqueue()` is exported as `EXPORT_SYMBOL_GPL` with target CRC
  `0xc3325950`.
- The additional synchronization imports in `zlog_test` are exported by the
  target as follows: `mutex_lock`/`mutex_unlock` CRC `0x995658e3`,
  `_raw_spin_lock_irqsave` CRC `0xaa615763`, and
  `_raw_spin_unlock_irqrestore` CRC `0x582af1c8`.
- `enable_delayed_work()` exists in the kernel source but is absent from the
  target `Module.symvers` files used by this build. The candidate therefore
  uses `disable_delayed_work_sync()` only for final module teardown; the
  normal sysfs disable path remains re-enableable.
- The reconstructed `zte_misc_unregister_callback()` waits for SRCU readers
  after removing the callback binding. Its candidate CRC is `0x61afab7e` and
  it is not exported by stock `zte_misc.ko`. The matching reconstructed
  `zte_misc_register_callback()` also has candidate CRC `0x61afab7e`; stock
  `zte_misc` exports CRC `0x9bec046c`. `zlog_test` therefore requires the
  reconstructed provider for both imports.

These are target-source and symbol-table checks, not device runtime results.
