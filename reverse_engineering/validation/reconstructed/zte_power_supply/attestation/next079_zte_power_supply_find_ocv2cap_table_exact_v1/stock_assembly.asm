
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d4c <zte_power_supply_find_ocv2cap_table>:
     d4c: aa0003e8     	mov	x8, x0
     d50: f84c8d09     	ldr	x9, [x8, #0xc8]!
     d54: b40002e9     	cbz	x9, 0xdb0 <zte_power_supply_find_ocv2cap_table+0x64>
     d58: aa1f03ea     	mov	x10, xzr
     d5c: 2a1f03e9     	mov	w9, wzr
     d60: 9101700b     	add	x11, x0, #0x5c
     d64: 12b0000c     	mov	w12, #0x7fffffff        // =2147483647
     d68: b86a796d     	ldr	w13, [x11, x10, lsl #2]
     d6c: 6b0101ad     	subs	w13, w13, w1
     d70: 5a8d55ad     	cneg	w13, w13, mi
     d74: 6b0c01bf     	cmp	w13, w12
     d78: 1a89b149     	csel	w9, w10, w9, lt
     d7c: 9100054a     	add	x10, x10, #0x1
     d80: 1a8cb1ac     	csel	w12, w13, w12, lt
     d84: f100515f     	cmp	x10, #0x14
     d88: 54ffff01     	b.ne	0xd68 <zte_power_supply_find_ocv2cap_table+0x1c>
     d8c: 12001d2a     	and	w10, w9, #0xff
     d90: 71004d5f     	cmp	w10, #0x13
     d94: 54000128     	b.hi	0xdb8 <zte_power_supply_find_ocv2cap_table+0x6c>
     d98: 8b29080a     	add	x10, x0, w9, uxtb #2
     d9c: 92401d29     	and	x9, x9, #0xff
     da0: b941694a     	ldr	w10, [x10, #0x168]
     da4: b900004a     	str	w10, [x2]
     da8: f8697900     	ldr	x0, [x8, x9, lsl #3]
     dac: d65f03c0     	ret
     db0: aa1f03e0     	mov	x0, xzr
     db4: d65f03c0     	ret
     db8: d42aa240     	brk	#0x5512
