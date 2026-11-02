
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001078 <zte_power_supply_ocv2cap_simple>:
    1078: 7100043f     	cmp	w1, #0x1
    107c: 540002ab     	b.lt	0x10d0 <zte_power_supply_ocv2cap_simple+0x58>
    1080: d37d7c2a     	ubfiz	x10, x1, #3, #32
    1084: aa1f03e8     	mov	x8, xzr
    1088: 2a0103e9     	mov	w9, w1
    108c: b868680b     	ldr	w11, [x0, x8]
    1090: 6b02017f     	cmp	w11, w2
    1094: 540000ed     	b.le	0x10b0 <zte_power_supply_ocv2cap_simple+0x38>
    1098: 91002108     	add	x8, x8, #0x8
    109c: eb08015f     	cmp	x10, x8
    10a0: 54ffff61     	b.ne	0x108c <zte_power_supply_ocv2cap_simple+0x14>
    10a4: 8b090c08     	add	x8, x0, x9, lsl #3
    10a8: b85fc100     	ldur	w0, [x8, #-0x4]
    10ac: d65f03c0     	ret
    10b0: b4000108     	cbz	x8, 0x10d0 <zte_power_supply_ocv2cap_simple+0x58>
    10b4: 8b080009     	add	x9, x0, x8
    10b8: 2940212a     	ldp	w10, w8, [x9]
    10bc: b85f812b     	ldur	w11, [x9, #-0x8]
    10c0: 6b0a016b     	subs	w11, w11, w10
    10c4: 540000a1     	b.ne	0x10d8 <zte_power_supply_ocv2cap_simple+0x60>
    10c8: 0b0803e0     	add	w0, wzr, w8
    10cc: d65f03c0     	ret
    10d0: b9400400     	ldr	w0, [x0, #0x4]
    10d4: d65f03c0     	ret
    10d8: b85fc129     	ldur	w9, [x9, #-0x4]
    10dc: 4b0a004a     	sub	w10, w2, w10
    10e0: 4b080129     	sub	w9, w9, w8
    10e4: 1b0a7d29     	mul	w9, w9, w10
    10e8: 1acb0d29     	sdiv	w9, w9, w11
    10ec: 0b080120     	add	w0, w9, w8
    10f0: d65f03c0     	ret
