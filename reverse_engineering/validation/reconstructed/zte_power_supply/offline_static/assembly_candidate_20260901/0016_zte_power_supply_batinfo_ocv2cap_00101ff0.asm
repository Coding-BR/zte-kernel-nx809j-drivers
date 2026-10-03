
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001880 <zte_power_supply_batinfo_ocv2cap>:
    1880: aa0003e8     	mov	x8, x0
    1884: f84c8d09     	ldr	x9, [x8, #0xc8]!
    1888: b4000429     	cbz	x9, 0x190c <zte_power_supply_batinfo_ocv2cap+0x8c>
    188c: aa1f03ea     	mov	x10, xzr
    1890: 2a1f03e9     	mov	w9, wzr
    1894: 9101700b     	add	x11, x0, #0x5c
    1898: 12b0000c     	mov	w12, #0x7fffffff        // =2147483647
    189c: b86a796d     	ldr	w13, [x11, x10, lsl #2]
    18a0: 6b0d004d     	subs	w13, w2, w13
    18a4: 5a8d55ad     	cneg	w13, w13, mi
    18a8: 6b0c01bf     	cmp	w13, w12
    18ac: 1a89b149     	csel	w9, w10, w9, lt
    18b0: 9100054a     	add	x10, x10, #0x1
    18b4: 1a8cb1ac     	csel	w12, w13, w12, lt
    18b8: f100515f     	cmp	x10, #0x14
    18bc: 54ffff01     	b.ne	0x189c <zte_power_supply_batinfo_ocv2cap+0x1c>
    18c0: 71004d3f     	cmp	w9, #0x13
    18c4: 540004a8     	b.hi	0x1958 <zte_power_supply_batinfo_ocv2cap+0xd8>
    18c8: f8695908     	ldr	x8, [x8, w9, uxtw #3]
    18cc: b4000208     	cbz	x8, 0x190c <zte_power_supply_batinfo_ocv2cap+0x8c>
    18d0: 8b294809     	add	x9, x0, w9, uxtw #2
    18d4: b9416929     	ldr	w9, [x9, #0x168]
    18d8: 7100053f     	cmp	w9, #0x1
    18dc: 540002cb     	b.lt	0x1934 <zte_power_supply_batinfo_ocv2cap+0xb4>
    18e0: d37df12b     	lsl	x11, x9, #3
    18e4: aa1f03ea     	mov	x10, xzr
    18e8: b86a690c     	ldr	w12, [x8, x10]
    18ec: 6b01019f     	cmp	w12, w1
    18f0: 5400012d     	b.le	0x1914 <zte_power_supply_batinfo_ocv2cap+0x94>
    18f4: 9100214a     	add	x10, x10, #0x8
    18f8: eb0a017f     	cmp	x11, x10
    18fc: 54ffff61     	b.ne	0x18e8 <zte_power_supply_batinfo_ocv2cap+0x68>
    1900: 8b090d08     	add	x8, x8, x9, lsl #3
    1904: b85fc100     	ldur	w0, [x8, #-0x4]
    1908: d65f03c0     	ret
    190c: 128002a0     	mov	w0, #-0x16              // =-22
    1910: d65f03c0     	ret
    1914: b400010a     	cbz	x10, 0x1934 <zte_power_supply_batinfo_ocv2cap+0xb4>
    1918: 8b0a0109     	add	x9, x8, x10
    191c: 2940212a     	ldp	w10, w8, [x9]
    1920: b85f812b     	ldur	w11, [x9, #-0x8]
    1924: 6b0a016b     	subs	w11, w11, w10
    1928: 540000a1     	b.ne	0x193c <zte_power_supply_batinfo_ocv2cap+0xbc>
    192c: 0b0803e0     	add	w0, wzr, w8
    1930: d65f03c0     	ret
    1934: b9400500     	ldr	w0, [x8, #0x4]
    1938: d65f03c0     	ret
    193c: b85fc129     	ldur	w9, [x9, #-0x4]
    1940: 4b0a002a     	sub	w10, w1, w10
    1944: 4b080129     	sub	w9, w9, w8
    1948: 1b0a7d29     	mul	w9, w9, w10
    194c: 1acb0d29     	sdiv	w9, w9, w11
    1950: 0b080120     	add	w0, w9, w8
    1954: d65f03c0     	ret
    1958: d42aa240     	brk	#0x5512
