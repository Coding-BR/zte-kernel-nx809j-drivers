# Pre-candidate evidence: `bullet_nr_store`

Stock target: `bullet_nr_store@0010d480`, 148 bytes, KCFI type `0x95c41a97`. It parses an unsigned integer with base autodetection. A parse error returns before locking; success locks at `driver_data+0x248`, writes 32 bits at `driver_data-0x28`, unlocks, and returns the input count. MP0–MP6 record identity, ABI, effects, error paths, lock scope, a draft oracle, and no bus/register I/O.
