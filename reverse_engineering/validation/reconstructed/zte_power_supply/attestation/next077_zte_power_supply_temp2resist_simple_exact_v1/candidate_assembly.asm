
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020f4 <zte_power_supply_temp2resist_simple>:
    20f4: 7100043f     	cmp	w1, #0x1
    20f8: 540002eb     	b.lt	0x2154 <zte_power_supply_temp2resist_simple+0x60>
    20fc: 2a1f03e9     	mov	w9, wzr
    2100: aa0003e8     	mov	x8, x0
    2104: b940010a     	ldr	w10, [x8]
    2108: 6b02015f     	cmp	w10, w2
    210c: 5400010b     	b.lt	0x212c <zte_power_supply_temp2resist_simple+0x38>
    2110: 11000529     	add	w9, w9, #0x1
    2114: 91002108     	add	x8, x8, #0x8
    2118: 6b09003f     	cmp	w1, w9
    211c: 54ffff41     	b.ne	0x2104 <zte_power_supply_temp2resist_simple+0x10>
    2120: 8b21cc08     	add	x8, x0, w1, sxtw #3
    2124: b85fc100     	ldur	w0, [x8, #-0x4]
    2128: d65f03c0     	ret
    212c: 34000149     	cbz	w9, 0x2154 <zte_power_supply_temp2resist_simple+0x60>
    2130: 2940250a     	ldp	w10, w9, [x8]
    2134: 297f2d08     	ldp	w8, w11, [x8, #-0x8]
    2138: 4b0a004c     	sub	w12, w2, w10
    213c: 4b09016b     	sub	w11, w11, w9
    2140: 4b0a0108     	sub	w8, w8, w10
    2144: 1b0b7d8b     	mul	w11, w12, w11
    2148: 1ac80d68     	sdiv	w8, w11, w8
    214c: 0b090100     	add	w0, w8, w9
    2150: d65f03c0     	ret
    2154: b9400400     	ldr	w0, [x0, #0x4]
    2158: d65f03c0     	ret
