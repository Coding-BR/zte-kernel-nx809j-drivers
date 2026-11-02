# Pre-candidate evidence: `prct_mode_show`

Stock target: `prct_mode_show@0010c198`, 108 bytes, sysfs show KCFI type `0xae84bcd4`. It loads driver_data at `device+0x98`, operations at `driver_data+0x520`, and calls the callback at slot `0x150` with `driver_data-0xa8`. The callback type is `u8 (struct aw_haptic *)`, KCFI `0x784b3854`, corroborated by the separately validated `aw8693x_get_prctmode`. The wrapper formats the low byte with `snprintf(buf, 0x1000, "prctmode = %d\n", value)` and returns the formatter result.

MP0–MP6 pin identity, both ABIs, ordered state and output effects, KCFI trap behavior, lifetime, and downstream register context. Candidate gates remain pending.
