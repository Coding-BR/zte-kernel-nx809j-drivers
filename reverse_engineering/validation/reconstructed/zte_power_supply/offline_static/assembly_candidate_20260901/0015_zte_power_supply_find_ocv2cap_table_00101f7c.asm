
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001814 <zte_power_supply_find_ocv2cap_table>:
    1814: aa0003e8     	mov	x8, x0
    1818: f84c8d09     	ldr	x9, [x8, #0xc8]!
    181c: b40002a9     	cbz	x9, 0x1870 <zte_power_supply_find_ocv2cap_table+0x5c>
    1820: aa1f03ea     	mov	x10, xzr
    1824: 2a1f03e9     	mov	w9, wzr
    1828: 9101700b     	add	x11, x0, #0x5c
    182c: 12b0000c     	mov	w12, #0x7fffffff        // =2147483647
    1830: b86a796d     	ldr	w13, [x11, x10, lsl #2]
    1834: 6b0d002d     	subs	w13, w1, w13
    1838: 5a8d55ad     	cneg	w13, w13, mi
    183c: 6b0c01bf     	cmp	w13, w12
    1840: 1a89b149     	csel	w9, w10, w9, lt
    1844: 9100054a     	add	x10, x10, #0x1
    1848: 1a8cb1ac     	csel	w12, w13, w12, lt
    184c: f100515f     	cmp	x10, #0x14
    1850: 54ffff01     	b.ne	0x1830 <zte_power_supply_find_ocv2cap_table+0x1c>
    1854: 71004d3f     	cmp	w9, #0x13
    1858: 54000108     	b.hi	0x1878 <zte_power_supply_find_ocv2cap_table+0x64>
    185c: 8b29480a     	add	x10, x0, w9, uxtw #2
    1860: b941694a     	ldr	w10, [x10, #0x168]
    1864: b900004a     	str	w10, [x2]
    1868: f8695900     	ldr	x0, [x8, w9, uxtw #3]
    186c: d65f03c0     	ret
    1870: aa1f03e0     	mov	x0, xzr
    1874: d65f03c0     	ret
    1878: d42aa240     	brk	#0x5512
