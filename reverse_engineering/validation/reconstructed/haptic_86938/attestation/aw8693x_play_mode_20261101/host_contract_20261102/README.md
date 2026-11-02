# `aw8693x_play_mode` bounded host contract — 2026-11-02

The harness compiles and executes the portable C branch of `haptic_86938_fn_139_aw8693x_play_mode.c` with mock `printk` and `i2c_w_bits` functions. It exhausts the full `u8` input domain (0–255), checks the play-mode byte and surrounding canaries, verifies each register/mask/value write, checks log content, and checks the order of logging and I2C events.

Two Clang r536225 Docker builds passed ASan and UBSan with the same binary hash. The mutation changes the RTP mode write to register `0x08` from value 1 to 0; the harness fails on that exact mismatch.

`state_effect_ledger.json` gives the hash-bound stock evidence and the ordered effects for modes 0–5 and invalid modes 6–255.

This result supplements `protocol_core_v7`, which separately proves the stock-exact AArch64 instruction/relocation sequence and KCFI metadata. On AArch64, the production source selects the assembly island; the host harness does not claim that its portable C branch is the implementation compiled into the module. It does not test kernel runtime, physical I2C, or hardware behavior, and it does not substitute for independent review.
