# Pre-candidate evidence: `rtp_auto_sin_store@00106ed0`

The 320-byte stock `device_attribute.store` callback parses an unsigned integer with base autodetection. Parser errors are logged and returned. On success, the callback locks driver_data+0x248 and branches on zero, a positive value below the u32 limit at +0x638, or a nonzero value at/above the limit. The first two paths update state and call `i2c_w_bits` for register 0x2d; out-of-range input clears state, logs the value, and skips the bus helper. Every successful parse unlocks before queuing work on CPU 0x20.

The exact KCFI preamble, complete 320-byte symbol interval, Ghidra decompilation/P-Code, stock assembly, callback-slot relocation, and log strings are hash-bound in MP0. Register semantics and work teardown lifetime remain unknown. The MP4 test oracle is a draft and is not an independent MP8 review.
