# Host harness for `aw8693x_parse_dt`

This harness compiles the real candidate function with bounded host implementations of the target OF helpers and printk. The stubs model the verified target API: `sz_max=0`, no output writes on errors, big-endian u32 decoding, and property presence independent of a property value.

Coverage: all 16 reads and order; scalar and array offsets; both local-buffer commits; all eight flag combinations; each read failing independently while later calls continue; all reads failing with sentinel preservation; short and surplus properties; and `np == NULL` with a valid output object. The runner uses ASan/UBSan and requires a one-byte destination-offset mutant to fail.

Run: `python reverse_engineering/validation/reconstructed/haptic_86938/attestation/haptic_aw8693x_parse_dt_20261101/host_harness/run_host_harness.py`. This is a bounded host model and does not validate the actual device tree or hardware.

The runner records hashes for the parser, harness, runner and all stub headers. It builds the mutant separately and only counts detection after that compilation succeeds.
