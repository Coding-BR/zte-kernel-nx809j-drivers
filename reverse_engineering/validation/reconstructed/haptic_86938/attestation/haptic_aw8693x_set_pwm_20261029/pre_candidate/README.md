# Pre-candidate evidence: `aw8693x_set_pwm`

Stock target: `aw8693x_set_pwm@00104694`, 164 bytes, KCFI type `0x1d0adf6e`. The byte mode maps 0–3 to values 0x20, 0, 0x40 and 0x60, updating register 0x46 through `i2c_w_bits` with mask 0xffffff9f. Other values emit the stock `error param` message and skip the helper. The helper status is ignored. MP0–MP6 pin identity, callback ABI, mode effects, invalid handling, the draft oracle and bus effects.
