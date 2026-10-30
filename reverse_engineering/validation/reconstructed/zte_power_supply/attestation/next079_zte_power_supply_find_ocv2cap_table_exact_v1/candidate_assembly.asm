
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010ac <zte_power_supply_find_ocv2cap_table>:
    10ac: aa0003e8     	mov	x8, x0
    10b0: f84c8d09     	ldr	x9, [x8, #0xc8]!
    10b4: b40002e9     	cbz	x9, 0x1110 <zte_power_supply_find_ocv2cap_table+0x64>
    10b8: aa1f03ea     	mov	x10, xzr
    10bc: 2a1f03e9     	mov	w9, wzr
    10c0: 9101700b     	add	x11, x0, #0x5c
    10c4: 12b0000c     	mov	w12, #0x7fffffff        // =2147483647
    10c8: b86a796d     	ldr	w13, [x11, x10, lsl #2]
    10cc: 6b0101ad     	subs	w13, w13, w1
    10d0: 5a8d55ad     	cneg	w13, w13, mi
    10d4: 6b0c01bf     	cmp	w13, w12
    10d8: 1a89b149     	csel	w9, w10, w9, lt
    10dc: 9100054a     	add	x10, x10, #0x1
    10e0: 1a8cb1ac     	csel	w12, w13, w12, lt
    10e4: f100515f     	cmp	x10, #0x14
    10e8: 54ffff01     	b.ne	0x10c8 <zte_power_supply_find_ocv2cap_table+0x1c>
    10ec: 12001d2a     	and	w10, w9, #0xff
    10f0: 71004d5f     	cmp	w10, #0x13
    10f4: 54000128     	b.hi	0x1118 <zte_power_supply_find_ocv2cap_table+0x6c>
    10f8: 8b29080a     	add	x10, x0, w9, uxtb #2
    10fc: 92401d29     	and	x9, x9, #0xff
    1100: b941694a     	ldr	w10, [x10, #0x168]
    1104: b900004a     	str	w10, [x2]
    1108: f8697900     	ldr	x0, [x8, x9, lsl #3]
    110c: d65f03c0     	ret
    1110: aa1f03e0     	mov	x0, xzr
    1114: d65f03c0     	ret
    1118: d42aa240     	brk	#0x5512
