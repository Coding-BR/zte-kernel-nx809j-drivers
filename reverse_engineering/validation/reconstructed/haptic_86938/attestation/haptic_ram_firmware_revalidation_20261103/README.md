# HAP-FW-01 RAM firmware lifetime revalidation

**Disposition:** statically addressed for candidate 6cbdd9dbab1a4581f98654fa845e77a94b99d4ef68bc4d64bf656c4c6f5e1fb3; runtime and hardware behavior remain unverified.

## What the stock evidence showed

The stock probe calls alloc_workqueue at 0x5004. If it returns NULL, Ghidra and stock assembly show the function setting its return register to zero, skipping ram_work_init, and branching through cleanup that calls devm_kfree before returning. The misc registration and g_aw_haptic publication at 0x5334 and 0x5340 are not reached on that branch. The lifetime wrapper therefore could receive a successful return and inspect clientdata after stock had released the state.

The historical firmware review also established that request_firmware_nowait runs its callback asynchronously on the pinned target's system workqueue and exposes no cancellation handle. The old remove path did not wait for that callback.

## Candidate changes

- The NULL-workqueue branch in aw_i2c_probe_stock_exact now returns -ENOMEM after the existing cleanup, instead of zero.
- The wrapper clears i2c clientdata on a probe error and never tries to remove the state from that failed branch.
- Successful probe publication requires the private workqueue at state +0x448 before LED registration or sysfs creation. This ensures the delayed work at +0x3c0 was initialized by ram_work_init.
- Firmware requests are counted before asynchronous submission. Completion skips ram_load after shutdown and decrements the count; removal closes sysfs/file admission, cancels delayed work, drains callbacks, cancels again, then frees the state.

The hash-bound candidate disassembly and pinned target source excerpts are included in this directory. The previous sysfs teardown review remains applicable to the same LED child lifecycle, and the current disassembly confirms the relevant ordering in this candidate.

## Docker build

Two isolated builds from the Docker curated/haptic_86938 snapshot completed successfully with image nubia-sm8850-kernel-builder:latest, target source commit 3356b35306d35d5a480e3b63df1a9f065b5d9f55, and Clang clang-r536225. Both produced the same 6,700,392-byte module with SHA-256 6cbdd9dbab1a4581f98654fa845e77a94b99d4ef68bc4d64bf656c4c6f5e1fb3. Full logs and their independent output volume names are in docker_builds.json.

The refreshed module ABI audit remains incomplete. Target vermagic and symbol CRC checks pass; strict stock import parity does not (gpio_free is missing and nine lifetime-support imports are additional). See module_abi_audit.json.

## Evidence

- ram_firmware_lifetime_revalidation.json: binding, stock path, candidate disposition, and limits.
- docker_builds.json: reproducible build inputs and outputs.
- source_sync.json: hash match between the reconstructed driver and Docker curated snapshot.
- docker_candidate_probe_failure_excerpt.txt: the patched -ENOMEM return and clientdata clearing in candidate disassembly.
- docker_candidate_lifetime_functions.txt: candidate disassembly for the probe wrapper, RAM callback, and teardown functions.
- docker_ram_firmware_lifetime_disassembly.txt and docker_candidate_symbols.txt: complete candidate disassembly and symbol list.
- docker_target_firmware_lifetime_source.txt: hash-bound target firmware, device-core, LED, and workqueue source excerpts.
- module_abi_audit.json: refreshed ABI/KMI audit.