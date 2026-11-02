
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002090 <zte_power_supply_ocv2cap_simple>:
    2090: 7100043f     	cmp	w1, #0x1
    2094: 540002eb     	b.lt	0x20f0 <zte_power_supply_ocv2cap_simple+0x60>
    2098: 2a1f03e9     	mov	w9, wzr
    209c: aa0003e8     	mov	x8, x0
    20a0: b940010a     	ldr	w10, [x8]
    20a4: 6b02015f     	cmp	w10, w2
    20a8: 5400010b     	b.lt	0x20c8 <zte_power_supply_ocv2cap_simple+0x38>
    20ac: 11000529     	add	w9, w9, #0x1
    20b0: 91002108     	add	x8, x8, #0x8
    20b4: 6b09003f     	cmp	w1, w9
    20b8: 54ffff41     	b.ne	0x20a0 <zte_power_supply_ocv2cap_simple+0x10>
    20bc: 8b21cc08     	add	x8, x0, w1, sxtw #3
    20c0: b85fc100     	ldur	w0, [x8, #-0x4]
    20c4: d65f03c0     	ret
    20c8: 34000149     	cbz	w9, 0x20f0 <zte_power_supply_ocv2cap_simple+0x60>
    20cc: 2940250a     	ldp	w10, w9, [x8]
    20d0: 297f2d08     	ldp	w8, w11, [x8, #-0x8]
    20d4: 4b0a004c     	sub	w12, w2, w10
    20d8: 4b09016b     	sub	w11, w11, w9
    20dc: 4b0a0108     	sub	w8, w8, w10
    20e0: 1b0b7d8b     	mul	w11, w12, w11
    20e4: 1ac80d68     	sdiv	w8, w11, w8
    20e8: 0b090100     	add	w0, w8, w9
    20ec: d65f03c0     	ret
    20f0: b9400400     	ldr	w0, [x0, #0x4]
    20f4: d65f03c0     	ret
