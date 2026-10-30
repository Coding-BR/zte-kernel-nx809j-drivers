# haptic_86938 reconstruction status

Status: incomplete. Offline stock evidence covers all 160 mapped functions. Two candidate functions now pass the automated core protocol; 158 functions remain NOT_STARTED.

- Stock module SHA-256: 05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e
- Stock functions mapped by exact name and entry: 160
- Functions without a stock mapping: 0
- Candidate source functions with core-gate attestations: 2
- Functions still not started: 158
- Whole-driver semantic equivalence: not established
- Hardware validation: not performed
- Module promotion: not authorized

## Candidate microtasks

Both functions passed all eight core gates: ASSEMBLY_RELOCATIONS, CANDIDATE_GHIDRA_PCODE, DOCKER_REPRODUCIBLE, INPUT_IDENTITY, JOERN_SCOPED, JOERN_SLICE, KCFI, and MAP_IDENTITY.

- aw8693x_set_bst_peak_cur: stock body is one ret instruction (4 bytes); the recovered signature is void (struct aw_haptic *); stock and candidate KCFI ID is 0x847a0830. Candidate module SHA-256: 7286ee7689b0f56424ab35f3872f99ce1e051a729c59acd9e39fcd3ff6ba8c52. [Attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_bstcur_20261029/README.md)
- state_store: stock body is mov x0, x3; ret (8 bytes); the recovered sysfs callback signature is ssize_t (struct device *, struct device_attribute *, const char *, size_t); stock and candidate KCFI ID is 0x95c41a97. It returns the supplied byte count and does not parse or store the buffer. Combined candidate module SHA-256: de2c719d096a338ba9160986ef53d3a62ecae4d0910f998edbe5caafa555d278. [Attestation](../../../../reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_state_20261029/README.md)

The core gates validate these functions and the reproducibility of the current candidate module. They do not authorize whole-driver promotion: independent review, the remaining functions, complete target-kernel identity and hardware validation remain open.

## Remaining stock evidence

- MP0 identity and stock assembly extraction: PASS for all 160 functions.
- MP1 call signatures: the 0x7cc2eb16 site is corroborated as u32(struct i2c_adapter *) and resolves to i2c_algorithm.functionality; 154 other CALLIND origins and three computed-target hypotheses remain open.
- MP2 state/effect ledger: 3,523 raw LOAD/STORE records, review required.
- MP3 control/error matrix: 708 conditional branches, 237 direct branches, 949 call references and 166 BRANCHIND operations, review required.
- MP4 event/callback inventory: 213 selected API call references, 214 .data relocations, 127 function-pointer relocations and 23 nearby callback-sensitive code-address relocations. ABI, ownership and teardown gaps remain open.
- MP5 resource/lifetime surface: 11 resource groups and 29 focused summaries. Four lifecycle pairs and the IRQ dev_id link were manually reviewed; allocation/release ownership, firmware callback quiescence, sysfs/LED cleanup and other teardown paths remain open.

The stock module reports vermagic 6.12.23-maybe-dirty-4k; the shared Docker kernel source currently reports 6.12.23-4k. These function attestations do not make the combined candidate a verified replacement module.
