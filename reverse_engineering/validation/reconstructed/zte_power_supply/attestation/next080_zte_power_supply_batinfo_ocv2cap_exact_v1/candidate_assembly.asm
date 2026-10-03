
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002074 <zte_power_supply_batinfo_ocv2cap>:
    2074: aa0003e8     	mov	x8, x0
    2078: f84c8d09     	ldr	x9, [x8, #0xc8]!
    207c: b4000469     	cbz	x9, 0x2108 <zte_power_supply_batinfo_ocv2cap+0x94>
    2080: aa1f03ea     	mov	x10, xzr
    2084: 2a1f03e9     	mov	w9, wzr
    2088: 9101700b     	add	x11, x0, #0x5c
    208c: 12b0000c     	mov	w12, #0x7fffffff        // =2147483647
    2090: b86a796d     	ldr	w13, [x11, x10, lsl #2]
    2094: 6b0201ad     	subs	w13, w13, w2
    2098: 5a8d55ad     	cneg	w13, w13, mi
    209c: 6b0c01bf     	cmp	w13, w12
    20a0: 1a89b149     	csel	w9, w10, w9, lt
    20a4: 9100054a     	add	x10, x10, #0x1
    20a8: 1a8cb1ac     	csel	w12, w13, w12, lt
    20ac: f100515f     	cmp	x10, #0x14
    20b0: 54ffff01     	b.ne	0x2090 <zte_power_supply_batinfo_ocv2cap+0x1c>
    20b4: 12001d2a     	and	w10, w9, #0xff
    20b8: 71004d5f     	cmp	w10, #0x13
    20bc: 54000428     	b.hi	0x2140 <zte_power_supply_batinfo_ocv2cap+0xcc>
    20c0: 92401d2a     	and	x10, x9, #0xff
    20c4: f86a7908     	ldr	x8, [x8, x10, lsl #3]
    20c8: b4000208     	cbz	x8, 0x2108 <zte_power_supply_batinfo_ocv2cap+0x94>
    20cc: 8b290809     	add	x9, x0, w9, uxtb #2
    20d0: b9416929     	ldr	w9, [x9, #0x168]
    20d4: 7100053f     	cmp	w9, #0x1
    20d8: 5400030b     	b.lt	0x2138 <zte_power_supply_batinfo_ocv2cap+0xc4>
    20dc: d37df12c     	lsl	x12, x9, #3
    20e0: aa1f03ea     	mov	x10, xzr
    20e4: b86a690b     	ldr	w11, [x8, x10]
    20e8: 6b0b002d     	subs	w13, w1, w11
    20ec: 5400012c     	b.gt	0x2110 <zte_power_supply_batinfo_ocv2cap+0x9c>
    20f0: 9100214a     	add	x10, x10, #0x8
    20f4: eb0a019f     	cmp	x12, x10
    20f8: 54ffff61     	b.ne	0x20e4 <zte_power_supply_batinfo_ocv2cap+0x70>
    20fc: 8b29cd08     	add	x8, x8, w9, sxtw #3
    2100: b85fc100     	ldur	w0, [x8, #-0x4]
    2104: d65f03c0     	ret
    2108: 128002a0     	mov	w0, #-0x16              // =-22
    210c: d65f03c0     	ret
    2110: b400014a     	cbz	x10, 0x2138 <zte_power_supply_batinfo_ocv2cap+0xc4>
    2114: 8b0a0108     	add	x8, x8, x10
    2118: b9400509     	ldr	w9, [x8, #0x4]
    211c: 297f2908     	ldp	w8, w10, [x8, #-0x8]
    2120: 4b09014a     	sub	w10, w10, w9
    2124: 4b0b0108     	sub	w8, w8, w11
    2128: 1b0d7d4a     	mul	w10, w10, w13
    212c: 1ac80d48     	sdiv	w8, w10, w8
    2130: 0b090100     	add	w0, w8, w9
    2134: d65f03c0     	ret
    2138: b9400500     	ldr	w0, [x8, #0x4]
    213c: d65f03c0     	ret
    2140: d42aa240     	brk	#0x5512
