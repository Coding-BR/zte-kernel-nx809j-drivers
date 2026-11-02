# brightness_get ABI probe

Ghidra sees an 8-byte body that loads a 32-bit value at parameter minus 0x50 and returns it. The KCFI type is 0x39e483e6.

Competing pointer-tag prototypes were compiled with the Docker clang-r536225 and the kernel KCFI integer-normalization option. Only the tested enum led_brightness (struct led_classdev *) prototype produced 0x39e483e6. The candidate returns the 32-bit enum stored 0x50 bytes before the led_classdev subobject.
