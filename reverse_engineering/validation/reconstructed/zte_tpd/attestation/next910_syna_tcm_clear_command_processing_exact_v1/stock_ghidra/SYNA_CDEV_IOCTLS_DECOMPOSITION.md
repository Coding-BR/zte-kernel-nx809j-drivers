# Ghidra Dispatcher Decomposition

- Stock decompile SHA-256: `0ad301f2253b15b6b44d817badf190041cd1fe78292f3d1ea4f5564e24629d47`
- Case map SHA-256: `ab99df1e50285e1c5d621c3c2b85bb2872106830469201b6388941eb1d31f77f`
- Switch expression: `param_2`
- Routes: `14`
- Promotion: each route is evidence navigation only until every listed offline gate passes.

| Opcode | Work item | Recovered behavior | Source span | Required harness |
|---|---|---|---|---|
| `0x11` | `190_11_store_pid` | store PID request and ABI reply | `193`-`196` | copy-to/from-user reply contract |
| `0x12` | `190_12_enable_irq` | IRQ enable, disable, and polling control | `197`-`329` | callback state matrix |
| `0x13` | `190_13_raw_read_dispatch` | raw-read dispatch wrapper | `330`-`332` | argument forwarding spy |
| `0x14` | `190_14_raw_write_dispatch` | raw-write dispatch wrapper | `333`-`335` | argument forwarding spy |
| `0x15` | `190_15_get_frame` | wait, dequeue, copy, and release a touch frame | `336`-`498` | queue and copy-failure matrix |
| `0x16` | `190_16_send_message` | allocate, send, copy response, and cleanup message buffer | `499`-`739` | allocation and response matrix |
| `0x17` | `190_17_set_queued_types` | replace queued report-type bitmap | `740`-`856` | bitmap bounds matrix |
| `0x18` | `190_18_check_frame` | copy and validate pending frame state | `857`-`970` | user-copy bounds matrix |
| `0x19` | `190_19_clear_frames` | remove every queued frame under lock | `971`-`994` | list cleanup matrix |
| `0x1a` | `190_1a_application_info` | allocate and update application-info buffer | `995`-`1081` | allocation and user-copy matrix |
| `0x1b` | `190_1b_do_hw_reset` | apply reset parameters and invoke hardware reset | `1082`-`1170` | callback and restore-state matrix |
| `default` | `190_default_legacy` | legacy opcode fallback | `1171`-`1173` | legacy opcode matrix |
| `0x21` | `190_21_set_config` | copy and apply runtime configuration | `1174`-`1318` | configuration buffer matrix |
| `0x22` | `190_22_get_config_params` | materialize and return runtime configuration | `1319`-`1440` | configuration reply matrix |

## Mandatory Gates

Each route is only a planning unit. It must pass isolated Joern, stock/candidate assembly and P-Code comparison, two-cycle Docker build, and a direct host harness before it can contribute to the parent dispatcher.
