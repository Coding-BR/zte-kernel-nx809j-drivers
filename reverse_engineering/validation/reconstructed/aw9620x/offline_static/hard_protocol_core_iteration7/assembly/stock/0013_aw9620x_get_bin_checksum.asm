
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d4c <aw9620x_get_bin_checksum>:
    1d4c: 34000362     	cbz	w2, 0x1db8 <aw9620x_get_bin_checksum+0x6c>
    1d50: 2a1f03e9     	mov	w9, wzr
    1d54: 2a1f03e8     	mov	w8, wzr
    1d58: 2a1f03ea     	mov	w10, wzr
    1d5c: 14000011     	b	0x1da0 <aw9620x_get_bin_checksum+0x54>
    1d60: 11000d2b     	add	w11, w9, #0x3
    1d64: 1100092c     	add	w12, w9, #0x2
    1d68: 1100052d     	add	w13, w9, #0x1
    1d6c: 386b480b     	ldrb	w11, [x0, w11, uxtw]
    1d70: 386c480c     	ldrb	w12, [x0, w12, uxtw]
    1d74: 53081d6b     	lsl	w11, w11, #24
    1d78: 2a0c416b     	orr	w11, w11, w12, lsl #16
    1d7c: 386d480c     	ldrb	w12, [x0, w13, uxtw]
    1d80: 2a0c216b     	orr	w11, w11, w12, lsl #8
    1d84: 3869480c     	ldrb	w12, [x0, w9, uxtw]
    1d88: 11001129     	add	w9, w9, #0x4
    1d8c: 2a0c016b     	orr	w11, w11, w12
    1d90: 1100114a     	add	w10, w10, #0x4
    1d94: 0b080168     	add	w8, w11, w8
    1d98: 6b02015f     	cmp	w10, w2
    1d9c: 540000a2     	b.hs	0x1db0 <aw9620x_get_bin_checksum+0x64>
    1da0: 6b01015f     	cmp	w10, w1
    1da4: 54fffde3     	b.lo	0x1d60 <aw9620x_get_bin_checksum+0x14>
    1da8: 1280000b     	mov	w11, #-0x1              // =-1
    1dac: 17fffff9     	b	0x1d90 <aw9620x_get_bin_checksum+0x44>
    1db0: 4b0803e0     	neg	w0, w8
    1db4: d65f03c0     	ret
    1db8: 4b1f03e0     	neg	w0, wzr
    1dbc: d65f03c0     	ret
