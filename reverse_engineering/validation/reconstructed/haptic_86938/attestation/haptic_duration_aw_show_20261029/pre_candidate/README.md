# Pre-candidate evidence: `duration_aw_show`

Stock target: `duration_aw_show@0010d97c`, 124 bytes, KCFI type `0xae84bcd4`. It is instruction-for-instruction identical to `duration_show` at `0010a2e8`: both check the hrtimer at `driver_data+0x288`, display zero when inactive, and otherwise convert signed remaining nanoseconds to milliseconds for the same bounded format. The stock `activate_aw_store` path can cancel this timer; no lock or new synchronization is added. MP0–MP6 record identity, callback ABI, effects, branch, output and lifetime evidence.
