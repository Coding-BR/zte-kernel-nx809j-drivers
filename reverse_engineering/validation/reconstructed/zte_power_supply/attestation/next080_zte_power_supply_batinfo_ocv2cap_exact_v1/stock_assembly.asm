
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000dc0 <zte_power_supply_batinfo_ocv2cap>:
     dc0: aa0003e8     	mov	x8, x0
     dc4: f84c8d09     	ldr	x9, [x8, #0xc8]!
     dc8: b4000469     	cbz	x9, 0xe54 <zte_power_supply_batinfo_ocv2cap+0x94>
     dcc: aa1f03ea     	mov	x10, xzr
     dd0: 2a1f03e9     	mov	w9, wzr
     dd4: 9101700b     	add	x11, x0, #0x5c
     dd8: 12b0000c     	mov	w12, #0x7fffffff        // =2147483647
     ddc: b86a796d     	ldr	w13, [x11, x10, lsl #2]
     de0: 6b0201ad     	subs	w13, w13, w2
     de4: 5a8d55ad     	cneg	w13, w13, mi
     de8: 6b0c01bf     	cmp	w13, w12
     dec: 1a89b149     	csel	w9, w10, w9, lt
     df0: 9100054a     	add	x10, x10, #0x1
     df4: 1a8cb1ac     	csel	w12, w13, w12, lt
     df8: f100515f     	cmp	x10, #0x14
     dfc: 54ffff01     	b.ne	0xddc <zte_power_supply_batinfo_ocv2cap+0x1c>
     e00: 12001d2a     	and	w10, w9, #0xff
     e04: 71004d5f     	cmp	w10, #0x13
     e08: 54000428     	b.hi	0xe8c <zte_power_supply_batinfo_ocv2cap+0xcc>
     e0c: 92401d2a     	and	x10, x9, #0xff
     e10: f86a7908     	ldr	x8, [x8, x10, lsl #3]
     e14: b4000208     	cbz	x8, 0xe54 <zte_power_supply_batinfo_ocv2cap+0x94>
     e18: 8b290809     	add	x9, x0, w9, uxtb #2
     e1c: b9416929     	ldr	w9, [x9, #0x168]
     e20: 7100053f     	cmp	w9, #0x1
     e24: 5400030b     	b.lt	0xe84 <zte_power_supply_batinfo_ocv2cap+0xc4>
     e28: d37df12c     	lsl	x12, x9, #3
     e2c: aa1f03ea     	mov	x10, xzr
     e30: b86a690b     	ldr	w11, [x8, x10]
     e34: 6b0b002d     	subs	w13, w1, w11
     e38: 5400012c     	b.gt	0xe5c <zte_power_supply_batinfo_ocv2cap+0x9c>
     e3c: 9100214a     	add	x10, x10, #0x8
     e40: eb0a019f     	cmp	x12, x10
     e44: 54ffff61     	b.ne	0xe30 <zte_power_supply_batinfo_ocv2cap+0x70>
     e48: 8b29cd08     	add	x8, x8, w9, sxtw #3
     e4c: b85fc100     	ldur	w0, [x8, #-0x4]
     e50: d65f03c0     	ret
     e54: 128002a0     	mov	w0, #-0x16              // =-22
     e58: d65f03c0     	ret
     e5c: b400014a     	cbz	x10, 0xe84 <zte_power_supply_batinfo_ocv2cap+0xc4>
     e60: 8b0a0108     	add	x8, x8, x10
     e64: b9400509     	ldr	w9, [x8, #0x4]
     e68: 297f2908     	ldp	w8, w10, [x8, #-0x8]
     e6c: 4b09014a     	sub	w10, w10, w9
     e70: 4b0b0108     	sub	w8, w8, w11
     e74: 1b0d7d4a     	mul	w10, w10, w13
     e78: 1ac80d48     	sdiv	w8, w10, w8
     e7c: 0b090100     	add	w0, w8, w9
     e80: d65f03c0     	ret
     e84: b9400500     	ldr	w0, [x8, #0x4]
     e88: d65f03c0     	ret
     e8c: d42aa240     	brk	#0x5512
