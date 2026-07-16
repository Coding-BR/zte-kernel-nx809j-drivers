# Module Assembly Comparison

- Checked functions: `14`
- Opcode-exact functions: `13/14`
- Semantically accepted functions: `14/14`
- Strict binary-shape verdict: `FAIL`
- Validated semantic verdict: `PASS`

| Function | Opcode exact | Relocations | Semantic verdict |
|---|---:|---:|---:|
| `battery_module_pack_vendor_get` | PASS | PASS | PASS |
| `cleanup_module` | PASS | PASS | PASS |
| `get_sysnumber_byname` | PASS | PASS | PASS |
| `init_module` | PASS | PASS | PASS |
| `zte_misc_common_callback_get` | PASS | PASS | PASS |
| `zte_misc_common_callback_set` | PASS | PASS | PASS |
| `zte_misc_get_design_capacity` | PASS | PASS | PASS |
| `zte_misc_get_node_val` | PASS | PASS | PASS |
| `zte_misc_probe` | FAIL | PASS | PASS |
| `zte_misc_register_callback` | PASS | PASS | PASS |
| `zte_misc_remove` | PASS | PASS | PASS |
| `zte_poweroff_charging_handle` | PASS | PASS | PASS |
| `zte_poweroff_charging_status` | PASS | PASS | PASS |
| `zte_timezone_setup` | PASS | PASS | PASS |

## Validated Exceptions

- `zte_misc_probe`: `dominated_unsigned_bounds_guard` - accepted.
  Rationale: Both variants branch to the same trap. The preceding identical unsigned object-size guard proves gpio_idx <= 15 on every state that reaches this redundant second guard, so stock 'gpio_idx == 16' and candidate 'gpio_idx > 15' are both false on all reachable states.
