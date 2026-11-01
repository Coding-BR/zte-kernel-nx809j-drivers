# Host harness: `aw8693x_get_wav_loop@00105df0`

Builds the candidate function with GCC inside the pinned NX809J builder image and runs ASan/UBSan. The wrapper records the I2C helper call and all eight `snprintf` arguments while using libc `vsnprintf` for the real formatting output. It covers patterned input, negative helper results, the stock short-transfer `-6`, partial writes on failure, the return count, output guards, and touched haptic bytes.

The harness stubs the I2C helper and does not model the peripheral, establish the physical meaning of register `0x12`, prove kernel KMI, or test hardware.
