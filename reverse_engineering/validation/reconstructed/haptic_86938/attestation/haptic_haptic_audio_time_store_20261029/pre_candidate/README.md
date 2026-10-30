# Pre-candidate evidence: `haptic_audio_time_store`

Stock target: `haptic_audio_time_store@0010d2d8`, 148 bytes, KCFI type `0x95c41a97`. It scans exactly two decimal integers with `sscanf`; only a return value of 2 causes both 32-bit fields at driver_data+0x430 and +0x434 to be written. Every path returns the input count. No lock or bus operation appears in the stock body. MP0–MP6 preserve the identity, ABI, state effects, control flow, draft oracle, lock finding, and bus ledger.
