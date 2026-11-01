# State/effect ledger: `richtap_rtp_work`

| Order | Condition | Reads | Writes/calls |
|---|---|---|---|
| Entry | always | `work` | `rtp_work_state` at `aw+0x6c0 = 0`; `rtp_ptr` at `aw+0x620 = rtp_fifo_head` at `aw+0x610`; local copied/retry counters = 0 |
| FIFO loop | node state `U` | signed `data_size` at node `+2`, `rtp_len` at `aw+0x458`, payload at node `+0x18`, RTP output at `aw+0x608` | If the whole node fits: copy node size, state=`0xff`, add size to copied, clear node size and `rtp_cnt` at `aw+0x6b8`, advance cursor through node `+8`. Otherwise copy `rtp_len-copied`, store that remainder in `rtp_cnt`, and set copied=`rtp_len`; cursor/node stay in place. |
| FIFO loop | node state `0xaa` | state byte | break |
| FIFO loop | other state | state byte | `msleep(1)`; break after the post-increment retry comparison reaches 30 (31 sleeps from an initially invalid state) |
| Start | always after FIFO loop | `richtap_rtp_start(aw)` result | If bit 0 is clear, return without data/IRQ callbacks. |
| Send | start bit 0 set | RTP buffer and copied length | callback slot `+0xd0` with `(aw, rtp_data, copied)` |
| Loop mode | `aw+0x11 == 1` | FIFO-almost-full callback at `+0x170`, mode byte `aw+0x17`, current node state, global-state callback at `+0x160` | set `rtp_loop=1`; while FIFO is not almost full, mode is 2, and current node is `U`, call `richtap_update_fifo_data(aw, rtp_len>>2)`; stop when low nibble of global state is zero; then callbacks `irq_clear(+0xf0)`, `set_rtp_aei(+0x110,1)` |
| Non-loop mode | `aw+0x11 != 1` | mode byte | callbacks `set_rtp_aei(+0x110,1)`, `irq_clear(+0xf0)`, then set `rtp_loop=1` |

The offsets and branch order come from the stock Ghidra body and assembly linked from `protocol_core_v14`. Exact AArch64 access widths are covered by the function comparison. The signed-size wrap counterexample and unresolved producer contract are recorded in `host_harness/bounded_model_report.json` and `static_review.md`.
