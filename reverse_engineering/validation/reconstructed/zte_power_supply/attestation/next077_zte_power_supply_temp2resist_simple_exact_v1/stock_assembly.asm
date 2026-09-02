
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c74 <zte_power_supply_temp2resist_simple>:
     c74: 7100043f     	cmp	w1, #0x1
     c78: 540002eb     	b.lt	0xcd4 <zte_power_supply_temp2resist_simple+0x60>
     c7c: 2a1f03e9     	mov	w9, wzr
     c80: aa0003e8     	mov	x8, x0
     c84: b940010a     	ldr	w10, [x8]
     c88: 6b02015f     	cmp	w10, w2
     c8c: 5400010b     	b.lt	0xcac <zte_power_supply_temp2resist_simple+0x38>
     c90: 11000529     	add	w9, w9, #0x1
     c94: 91002108     	add	x8, x8, #0x8
     c98: 6b09003f     	cmp	w1, w9
     c9c: 54ffff41     	b.ne	0xc84 <zte_power_supply_temp2resist_simple+0x10>
     ca0: 8b21cc08     	add	x8, x0, w1, sxtw #3
     ca4: b85fc100     	ldur	w0, [x8, #-0x4]
     ca8: d65f03c0     	ret
     cac: 34000149     	cbz	w9, 0xcd4 <zte_power_supply_temp2resist_simple+0x60>
     cb0: 2940250a     	ldp	w10, w9, [x8]
     cb4: 297f2d08     	ldp	w8, w11, [x8, #-0x8]
     cb8: 4b0a004c     	sub	w12, w2, w10
     cbc: 4b09016b     	sub	w11, w11, w9
     cc0: 4b0a0108     	sub	w8, w8, w10
     cc4: 1b0b7d8b     	mul	w11, w12, w11
     cc8: 1ac80d68     	sdiv	w8, w11, w8
     ccc: 0b090100     	add	w0, w8, w9
     cd0: d65f03c0     	ret
     cd4: b9400400     	ldr	w0, [x0, #0x4]
     cd8: d65f03c0     	ret
