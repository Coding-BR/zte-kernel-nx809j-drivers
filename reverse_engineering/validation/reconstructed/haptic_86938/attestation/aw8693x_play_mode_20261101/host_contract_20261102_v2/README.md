# `aw8693x_play_mode` host contract revalidation — 2026-11-02

This revalidation closes a gap in the earlier host harness. Its printk shim
previously erased `KERN_INFO` and `KERN_ERR`, and its assertions checked only
message fragments. The updated shim preserves Linux priority prefixes; the
contract checks exact severity, decimal site code, function name, message and
event order.

The pinned Docker image (`sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`)
and Clang r536225 built two isolated ASan/UBSan runs. Each exhausted all 256
`u8` inputs and passed 2,150 assertions; both produced the same binary hash.
Three seeded mutations were detected: an incorrect RTP I2C value, an error
log changed from ERR to INFO, and an incorrect RTP log site code.

The host harness executes only the portable C branch. The separate
`bounded_model_v1.json` emulates stock and candidate AArch64 function bodies
with external calls stubbed and matches all 256 inputs. Together with
`protocol_core_v10_semantic_bound`, this gives independent source-contract and
machine-code evidence. Neither harness executes the kernel or physical I2C
hardware. Review and the remaining promotion gates are still open.

Reproduce from the repository root:

```powershell
python kernel_development/drivers/validation/haptic_86938/host/run_aw8693x_play_mode_host_contract.py `
  --build-root reverse_engineering/validation/reconstructed/haptic_86938/attestation/aw8693x_play_mode_20261101/host_contract_20261102_v2/builds `
  --output reverse_engineering/validation/reconstructed/haptic_86938/attestation/aw8693x_play_mode_20261101/host_contract_20261102_v2/report.json
```
