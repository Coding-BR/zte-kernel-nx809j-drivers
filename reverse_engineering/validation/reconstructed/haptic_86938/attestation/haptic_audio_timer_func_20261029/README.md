# Haptic `audio_timer_func` reconstruction

Target: stock `audio_timer_func@0010dcc4`, 136 bytes, with callback KCFI type ID `0xe3cff753`.

The callback queues `timer + 0x40` on CPU `0x20` using the workqueue pointer at `timer - 0xd8`. It then reads the signed interval at `timer - 0x44`, converts it to nanoseconds using the stock signed quotient/remainder arithmetic, and rearms the hrtimer in relative mode.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. Stock and candidate match all 34 AArch64 instructions and 136 bytes, including both call relocations. Ghidra C/P-Code and KCFI pass. Two clean Docker builds produced candidate module SHA-256 `91973e90bb7b3e23bbf5eec735aec598a130fb6cc9ddeab9bd36526de6be0602` (3,457,488 bytes).

The full-driver audit remains incomplete. It reports 79 source files for the 160-function stock module, with function traceability, fresh-candidate parity, vermagic, alias, and undefined-symbol checks still failing. Promotion remains unauthorized. This is function-level static evidence and makes no hardware-behavior or full-driver-equivalence claim.
