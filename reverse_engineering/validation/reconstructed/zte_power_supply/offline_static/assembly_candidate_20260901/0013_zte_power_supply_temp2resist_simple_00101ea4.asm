
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010f8 <zte_power_supply_temp2resist_simple>:
    10f8: 7100043f     	cmp	w1, #0x1
    10fc: 540002ab     	b.lt	0x1150 <zte_power_supply_temp2resist_simple+0x58>
    1100: d37d7c2a     	ubfiz	x10, x1, #3, #32
    1104: aa1f03e8     	mov	x8, xzr
    1108: 2a0103e9     	mov	w9, w1
    110c: b868680b     	ldr	w11, [x0, x8]
    1110: 6b02017f     	cmp	w11, w2
    1114: 540000ed     	b.le	0x1130 <zte_power_supply_temp2resist_simple+0x38>
    1118: 91002108     	add	x8, x8, #0x8
    111c: eb08015f     	cmp	x10, x8
    1120: 54ffff61     	b.ne	0x110c <zte_power_supply_temp2resist_simple+0x14>
    1124: 8b090c08     	add	x8, x0, x9, lsl #3
    1128: b85fc100     	ldur	w0, [x8, #-0x4]
    112c: d65f03c0     	ret
    1130: b4000108     	cbz	x8, 0x1150 <zte_power_supply_temp2resist_simple+0x58>
    1134: 8b080009     	add	x9, x0, x8
    1138: 2940212a     	ldp	w10, w8, [x9]
    113c: b85f812b     	ldur	w11, [x9, #-0x8]
    1140: 6b0a016b     	subs	w11, w11, w10
    1144: 540000a1     	b.ne	0x1158 <zte_power_supply_temp2resist_simple+0x60>
    1148: 0b0803e0     	add	w0, wzr, w8
    114c: d65f03c0     	ret
    1150: b9400400     	ldr	w0, [x0, #0x4]
    1154: d65f03c0     	ret
    1158: b85fc129     	ldur	w9, [x9, #-0x4]
    115c: 4b0a004a     	sub	w10, w2, w10
    1160: 4b080129     	sub	w9, w9, w8
    1164: 1b0a7d29     	mul	w9, w9, w10
    1168: 1acb0d29     	sdiv	w9, w9, w11
    116c: 0b080120     	add	w0, w9, w8
    1170: d65f03c0     	ret
