# Pre-candidate evidence: `duration_show`

Stock target: `duration_show@0010a2e8`, 124 bytes, KCFI type `0xae84bcd4`. The callback obtains `driver_data` from the device, checks the hrtimer at `driver_data+0x288`, emits zero when inactive, and otherwise formats the signed remaining nanoseconds divided by 1,000,000 as `duration = %lldms\n`. No lock is acquired. MP0–MP6 pin the identity, sysfs ABI, ordered effects, branch behavior, timer lifetime surface, and formatting contract.
