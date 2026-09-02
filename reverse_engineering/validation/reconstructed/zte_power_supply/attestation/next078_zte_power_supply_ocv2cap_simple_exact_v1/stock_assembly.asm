
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ce0 <zte_power_supply_ocv2cap_simple>:
     ce0: 7100043f     	cmp	w1, #0x1
     ce4: 540002eb     	b.lt	0xd40 <zte_power_supply_ocv2cap_simple+0x60>
     ce8: 2a1f03e9     	mov	w9, wzr
     cec: aa0003e8     	mov	x8, x0
     cf0: b940010a     	ldr	w10, [x8]
     cf4: 6b02015f     	cmp	w10, w2
     cf8: 5400010b     	b.lt	0xd18 <zte_power_supply_ocv2cap_simple+0x38>
     cfc: 11000529     	add	w9, w9, #0x1
     d00: 91002108     	add	x8, x8, #0x8
     d04: 6b09003f     	cmp	w1, w9
     d08: 54ffff41     	b.ne	0xcf0 <zte_power_supply_ocv2cap_simple+0x10>
     d0c: 8b21cc08     	add	x8, x0, w1, sxtw #3
     d10: b85fc100     	ldur	w0, [x8, #-0x4]
     d14: d65f03c0     	ret
     d18: 34000149     	cbz	w9, 0xd40 <zte_power_supply_ocv2cap_simple+0x60>
     d1c: 2940250a     	ldp	w10, w9, [x8]
     d20: 297f2d08     	ldp	w8, w11, [x8, #-0x8]
     d24: 4b0a004c     	sub	w12, w2, w10
     d28: 4b09016b     	sub	w11, w11, w9
     d2c: 4b0a0108     	sub	w8, w8, w10
     d30: 1b0b7d8b     	mul	w11, w12, w11
     d34: 1ac80d68     	sdiv	w8, w11, w8
     d38: 0b090100     	add	w0, w8, w9
     d3c: d65f03c0     	ret
     d40: b9400400     	ldr	w0, [x0, #0x4]
     d44: d65f03c0     	ret
