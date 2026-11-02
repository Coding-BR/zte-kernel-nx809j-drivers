# Pre-candidate evidence: `aw8693x_get_ram_data`

Stock target: `aw8693x_get_ram_data@00105f98`, 132 bytes, KCFI type `0x0c0dba4c` with preamble at stock-relative `0x3174`. The function returns immediately for zero length. Otherwise it reads register `0x42` in chunks of at most `0x400` bytes, discards each `i2c_r_bytes` result, reloads the 32-bit length at `haptic+0x450` after every call, and returns the sign-extended 32-bit offset.

MP0 pins function identity and KCFI. MP1 records the prototype evidence. MP2–MP4 record state, control flow, effects, and a draft oracle. MP5 records the observed lifetime boundary. No hardware behavior or whole-driver equivalence is claimed. Candidate source was absent when this packet was pinned; candidate gates remain pending.
