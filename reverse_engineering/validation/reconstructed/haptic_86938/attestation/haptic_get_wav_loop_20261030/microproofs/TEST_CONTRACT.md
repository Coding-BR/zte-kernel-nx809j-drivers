# Test contract — aw8693x_get_wav_loop@00105df0

ABI: `unsigned long aw8693x_get_wav_loop(struct aw_haptic *haptic, char *buf)`. The caller supplies a valid haptic pointer and a sysfs buffer with 0x1000 writable bytes. `char *` is best supported by the stock wrapper; KCFI also collides with `unsigned char *`, so the exact nominal pointee spelling remains unknown.

Observed effects: zero a local four-byte input; call `i2c_r_bytes(haptic, 0x12, data, 4)` once and ignore its return; for each byte store low nibble then high nibble at paired haptic offsets, then format the high and low values for consecutive sequence numbers. The Ghidra decompiler omits the `%02x` vararg for seq1/3/5/7; stock assembly sets w4 to the high nibble before each call. Return is the sum of eight `snprintf` int results widened as `unsigned long`.

Reference input `A5 3C E0 1F` with ordinary `snprintf` must produce exactly:

```text
seq1 loop: 0x0a
seq2 loop: 0x05
seq3 loop: 0x03
seq4 loop: 0x0c
seq5 loop: 0x0e
seq6 loop: 0x00
seq7 loop: 0x01
seq8 loop: 0x0f
```

Each line is 16 bytes, total return is 128, and `buf[128]` is NUL. Haptic offsets +0x26..+0x2d must contain `A,5,3,C,E,0,1,F`. The ASan/UBSan host harness verifies leading/trailing canaries and `buf[129..4095]` remain unchanged for this reference case.

Failure cases: (1) negative helper return with no writes: the zeroed local produces eight zero values. (2) underlying `i2c_transfer` returns 1, so the stock `i2c_r_bytes` helper returns -6; the target still emits zeros if the helper leaves the local unchanged. (3) negative helper return with partial writes: output follows the local bytes, proving errno is ignored.

Unknown/deferred: physical meaning of register 0x12, actuator behavior, timing, and device response. Do not run on hardware.
