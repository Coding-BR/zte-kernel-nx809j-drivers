# Microtask execution status

> **LEGACY MICROTASK EVIDENCE:** this directory preserves the historical
> `zte_ir_reconstructed.ko` build and atomic-function reports. It is not the
> canonical candidate. Use `../zte_ir.c` and `../zte_ir.ko` with SHA-256
> `1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc`.

| ID | Function | Status | Validation |
|---|---|---|---|
| 01 | `zte_ir_spi_get()` | complete | Kernel 6.12 headers, Clang r536225, KCFI, GKI symbols and namespaces |
| 02 | `zte_ir_encode_pulses()` | complete | 81 functional checks, Kernel 6.12 headers, Clang r536225, KCFI and GKI audit |
| 03 | `zte_ir_write()` | complete | 156 failure/cleanup/transfer checks, stock KCFI match and GKI audit |
| 04 | `zte_ir_ioctl()` | complete | 44 functional checks, stock KCFI match and GKI audit |
| 05 | `zte_ir_open()` | complete | 121 shared lifecycle checks with probe/release/remove and stock KCFI match |
| 06 | `zte_ir_release()` | complete | 121 shared lifecycle checks with open/probe/remove and stock KCFI match |
| 07 | `zte_ir_probe()` | complete | 121 shared lifecycle checks, allocation rollback and stock KCFI match |
| 08 | `zte_ir_remove()` | complete | 121 shared lifecycle checks, serialized I/O teardown and stock KCFI match |
| 09 | `zte_ir_init()` | complete | 34 registration/rollback checks and integrated module build |
| 10 | `zte_ir_exit()` | complete | 34 symmetric teardown checks and integrated module build |

Microtask 01 uses `spin_lock_irqsave()` around publication lookup and
`spi_dev_get()`, then releases the spinlock before returning. The generated
object imports only `_raw_spin_lock_irqsave`, `_raw_spin_unlock_irqrestore` and
`get_device`; all are exported by `vmlinux`, no namespace import is required,
and the function KCFI type id is `0x2bc183e0`.

`pr_debug()` remains in the source but is compiled out by the current kernel
configuration when dynamic debug/`DEBUG` is not enabled for this unit.

Microtask 02 converts microsecond pulses with the stock rounding formula,
preserves HIGH/LOW phase across zero-length pulses and rejects a total of
40,000 words while accepting 39,999. Its AArch64 object has no undefined
symbols, needs no namespace import and has KCFI type id `0xc0d4c44d`.

Microtask 03 integrates the two helpers with `memdup_user()`, a completely
zeroed `spi_transfer`, `spi_sync()` and reverse-order cleanup. Its 156 checks
cover invalid input, removed device, copy failure, missing SPI, encoder limit,
SPI failure, zero-word transfer and success. Every acquired SPI reference is
released, every allocation is freed, `bits_per_word` remains zero and the
callback matches the stock KCFI type id `0xc3d43b4d`.

Microtask 04 implements the device IOCTL, supporting only ZTE_IR_IOC_SET_CARRIER.
It uses `get_user()` to read the carrier frequency, validates positive bounds,
verifies that the resulting SPI speed does not exceed the hardware capability (5MHz),
and updates `speed_hz` under the `buf_lock` mutex. Its generated object has only
GKI-allowed undefined symbols (`mutex_lock`/`mutex_unlock`) and has KCFI type id `0x2af6cdbb`.

Microtask 05 implements the open callback. Under `device_list_lock`, it traverses the
global `device_list` to find a runtime device whose `devt` matches the inode's `i_rdev`.
It rejects removed devices, increments `runtime->users`, sets `file->private_data`,
and calls `nonseekable_open()`. On failure, it rolls back `users` and `private_data`
before releasing the lock. Its generated object has only GKI-allowed undefined symbols
(`mutex_lock`/`mutex_unlock`, `nonseekable_open`) and has KCFI type id `0x9829071d`.

Microtask 06 implements the release callback. Under `device_list_lock`, it decrements
`runtime->users`, underflow-protects it, and sets `file->private_data` to NULL.
If `removed` is true and `users` reaches 0, it schedules the runtime structure for
deferred deletion via `kfree()`, which is executed strictly after releasing the lock.
Its generated object has only GKI-allowed undefined symbols (`kfree`, `mutex_lock`/`mutex_unlock`)
and has KCFI type id `0x9829071d`.

Microtask 07 implements the device probe. It allocates the runtime structure via `kzalloc()`,
initializes all locks, constants, lists and properties, and under `device_list_lock` enforces
exclusive minor 0 registration. It forms `devt`, calls `device_create()`, handles failures
gracefully using `PTR_ERR_OR_ZERO` and structured rollbacks, and registers the device in
the global list. Its generated object has only GKI-allowed undefined symbols (`__kmalloc_large_noprof`,
`__list_add_valid_or_report`, `__mutex_init`, `device_create`, `kfree`, `mem_alloc_profiling_key`,
`mutex_lock`/`mutex_unlock`) and has KCFI type id `0xba1082a1`.

Microtask 08 implements the device removal. It retrieves the runtime structure, marks it as
removed under `device_list_lock`, invalidates the SPI reference under the local spinlock `spi_lock`,
removes the device from the list, destroys `/dev/zte_ir`, releases the minor and the driver data.
If there are no open user sessions (`users == 0`), it frees the runtime structure immediately.
Otherwise, it defers the deletion to the release callback. Its generated object has only
GKI-allowed undefined symbols (`__list_del_entry_valid_or_report`, `_raw_spin_lock_irqsave`,
`_raw_spin_unlock_irqrestore`, `device_destroy`, `kfree`, `mutex_lock`/`mutex_unlock`) and has KCFI
type id `0x509a2353`.

Microtask 09 implements the module initialization. It registers the char device range dynamically
requesting a major number for a single minor, creates the device class, and registers the SPI driver.
On any initialization error, it gracefully rolls back allocations and registrations in reverse
order. Its generated object has only GKI-allowed undefined symbols (`__register_chrdev`,
`__spi_register_driver`, `__unregister_chrdev`, `_printk`, `class_create`, `class_destroy`) and has
KCFI type id `0x6fbb3035`.

Microtask 10 implements the module exit. It unregisters the SPI driver, destroys the device class,
and unregisters the char device range in a safe teardown order matching the initialization.
Its generated object has only GKI-allowed undefined symbols (`__unregister_chrdev`, `class_destroy`,
`driver_unregister`) and has KCFI type id `0xe5c47d60`.

## Integrated module

`final/zte_ir_reconstructed.ko` is built by the real Kernel 6.12 Kbuild and
passes `modpost`, MODVERSIONS, the GKI symbol audit and all eight stock KCFI
comparisons. Two clean builds produce the same SHA-256:
`2e7e1dfb116cf4574b3fd2ed6cc6512e9bd882974d20c32341ae742ca175b61c`.
The module has the exact active-kernel vermagic, GPL license and only the OF
aliases for `zte,zte_ir`. It has not been inserted into the smartphone.
