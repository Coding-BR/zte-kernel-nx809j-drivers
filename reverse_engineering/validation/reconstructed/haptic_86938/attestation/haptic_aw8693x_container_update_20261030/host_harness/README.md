# aw8693x_container_update host harness

This harness compiles the reconstructed function with GCC ASan/UBSan inside the pinned builder image. Its fake bus checks the address and transfer sequence, multi-chunk writes and reads, mismatch cleanup, ignored I2C errors, mutex balance, and container immutability.

A separate sanitizer invocation supplies the stock-accepted three-byte payload and records the out-of-bounds 16-bit read at data offset 2. That confirms the inherited stock defect. The fake device does not establish hardware behavior, register meaning, or runtime compatibility.
