# zte_ramdisk_reboot: lifetime and synchronization audit — 2026-11-03

## Result

The current Docker curated module was extracted and compared with stock using the repository AArch64 assembly pipeline. All 13 functions pass normalized instruction, relocation, section, and symbol-size comparison. The audit found stock-inherited lifetime and synchronization risks around platform removal, the global watchdog pointer, the NVMEM cell reference, and the sysfs buffer.

No source, module, or reconstruction map was changed. No phone operation, module load/unload, watchdog call, NVMEM write, or sysfs test was performed. Since source did not change, no rebuild was needed.

## Identity

- Candidate source: kernel_development/drivers/reconstructed/zte_ramdisk_reboot/zte_ramdisk_reboot.c, SHA-256 b6659a11624f3c189df04054bbb4caf97099e4a758786e4f90d0a3cddab35052.
- Candidate module: SHA-256 1f027cf0fab9269141d722b225b04bfea688add1d28577ba1cbd03543e388892, 221584 bytes.
- Reconstruction map: SHA-256 61ef6325dcd7b3729dab0705150998162d6ce1dcb94dd4071fab05e4a48106a5.
- Stock module: SHA-256 598d5862b03a7f1fdc60318ca53fb6837716662c591991390e6f946aafb2d740.
- Stock Ghidra inventory: 13 functions, SHA-256 1712abe7dae9371fa3050414aae5eb0ea4e8320162d9ee23ed86937478740ce5.
- Source, module, and map match the canonical Docker curated snapshot.
- Target kernel source commit: 3356b35306d35d5a480e3b63df1a9f065b5d9f55.

The implementation reproduces these stock behaviors. This report records their risk without changing the exact reconstruction or its map statuses.

## Findings

### 1. Unbind leaves a sysfs kobject and global pointer stale

Probe allocates its state with devm_kzalloc, initializes a kobject under kernel_kobj, creates the ramdisk_nvmem sysfs group, and stores the state in global ramdisk_rb. The platform remove callback is a no-op. The target device core calls remove and then releases devres, freeing the embedded kobject storage. Remove does not delete the sysfs group/kobject or clear ramdisk_rb. The sysfs path can therefore retain a reference to freed state and module-owned sysfs operations. After unbind, a watchdog call to zte_ramdisk_reboot_write can also dereference the stale global pointer.

This is a static use-after-free risk. No unbind or watchdog call was attempted.

### 2. NVMEM cell reference is not released

Successful probe calls nvmem_cell_get. There is no nvmem_cell_put in the stock call inventory or remove path. The target NVMEM API requires nvmem_cell_put to release that cell/provider reference, so unbind leaks it.

### 3. Kobject reference is not balanced on sysfs-group failure

If sysfs_create_group fails after kobject_init_and_add succeeds, the path calls kobject_del and returns without kobject_put. Target kobject_del unlinks the object and drops the parent reference; it does not put the kobject itself. Failed probe then releases the devm backing allocation. This is an inherited kobject lifetime defect.

### 4. Shared sysfs buffer has no synchronization

The sysfs group is created before probe scans the XBL log and writes extract_buffer. ramdisk_nvmem_show reads that global via scnprintf without a lock while probe extraction writes it with ordinary stores. A concurrent read during probe can observe empty or partial output.

zte_ramdisk_reboot_write also stages its input in one global byte, saved_ramdisk_buf, then passes that address to nvmem_cell_write without local serialization. Overlapping calls could overwrite each other's byte. Whether the watchdog caller can overlap was not established; this remains a possible race, not a reproduced failure.

## Target-kernel lifetime evidence

The read-only Docker source volume is pinned to the target kernel commit above:

- drivers/base/dd.c: device_remove invokes the driver's remove callback; device_unbind_cleanup then calls devres_release_all.
- lib/kobject.c: kobject_del unlinks the object and puts its parent; it does not decrement the object's own reference.
- drivers/nvmem/core.c: nvmem_cell_get returns a cell released with nvmem_cell_put.

## Status

The current module's 13/13 function parity is verified. The driver remains INCOMPLETE: the existing Gate 8 criterion asks for another session/LLM review, and Gate 9 requires controlled hardware validation. Hardware tests were not run because they can affect watchdog/reboot, NVMEM, and reserved memory.
