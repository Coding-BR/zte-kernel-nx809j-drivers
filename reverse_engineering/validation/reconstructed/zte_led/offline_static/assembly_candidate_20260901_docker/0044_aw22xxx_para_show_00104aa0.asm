
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000029d0 <aw22xxx_para_show>:
    29d0: d503233f     	paciasp
    29d4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    29d8: a9016ffc     	stp	x28, x27, [sp, #0x10]
    29dc: a90267fa     	stp	x26, x25, [sp, #0x20]
    29e0: a9035ff8     	stp	x24, x23, [sp, #0x30]
    29e4: a90457f6     	stp	x22, x21, [sp, #0x40]
    29e8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    29ec: 910003fd     	mov	x29, sp
    29f0: 90000017     	adrp	x23, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		00000000000029f0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x80
    29f4: b94002e8     	ldr	w8, [x23]
		00000000000029f4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    29f8: 340005a8     	cbz	w8, 0x2aac <aw22xxx_para_show+0xdc>
    29fc: 52800338     	mov	w24, #0x19              // =25
    2a00: aa0203f3     	mov	x19, x2
    2a04: 1b187d08     	mul	w8, w8, w24
    2a08: 7100051f     	cmp	w8, #0x1
    2a0c: 5400054b     	b.lt	0x2ab4 <aw22xxx_para_show+0xe4>
    2a10: aa1f03f9     	mov	x25, xzr
    2a14: aa1f03f6     	mov	x22, xzr
    2a18: 1280031b     	mov	w27, #-0x19             // =-25
    2a1c: 5282001c     	mov	w28, #0x1000            // =4096
    2a20: 90000014     	adrp	x20, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002a20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x84
    2a24: 91000294     	add	x20, x20, #0x0
		0000000000002a24:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x84
    2a28: 528c351a     	mov	w26, #0x61a8            // =25000
    2a2c: 90000015     	adrp	x21, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3d
    2a30: 910002b5     	add	x21, x21, #0x0
		0000000000002a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3d
    2a34: b40001d9     	cbz	x25, 0x2a6c <aw22xxx_para_show+0x9c>
    2a38: 5290a3e9     	mov	w9, #0x851f             // =34079
    2a3c: 92407f28     	and	x8, x25, #0xffffffff
    2a40: 72aa3d69     	movk	w9, #0x51eb, lsl #16
    2a44: 9ba97d08     	umull	x8, w8, w9
    2a48: d363fd08     	lsr	x8, x8, #35
    2a4c: 1b1b6508     	madd	w8, w8, w27, w25
    2a50: 350000e8     	cbnz	w8, 0x2a6c <aw22xxx_para_show+0x9c>
    2a54: cb160381     	sub	x1, x28, x22
    2a58: 8b160260     	add	x0, x19, x22
    2a5c: 90000002     	adrp	x2, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb0
    2a60: 91000042     	add	x2, x2, #0x0
		0000000000002a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb0
    2a64: 94000000     	bl	0x2a64 <aw22xxx_para_show+0x94>
		0000000000002a64:  R_AARCH64_CALL26	snprintf
    2a68: 8b20c2d6     	add	x22, x22, w0, sxtw
    2a6c: eb1a033f     	cmp	x25, x26
    2a70: 54000420     	b.eq	0x2af4 <aw22xxx_para_show+0x124>
    2a74: eb1a033f     	cmp	x25, x26
    2a78: 54000400     	b.eq	0x2af8 <aw22xxx_para_show+0x128>
    2a7c: b8797a83     	ldr	w3, [x20, x25, lsl #2]
    2a80: cb160381     	sub	x1, x28, x22
    2a84: 8b160260     	add	x0, x19, x22
    2a88: aa1503e2     	mov	x2, x21
    2a8c: 94000000     	bl	0x2a8c <aw22xxx_para_show+0xbc>
		0000000000002a8c:  R_AARCH64_CALL26	snprintf
    2a90: b94002e8     	ldr	w8, [x23]
		0000000000002a90:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x80
    2a94: 91000739     	add	x25, x25, #0x1
    2a98: 8b20c2d6     	add	x22, x22, w0, sxtw
    2a9c: 1b187d08     	mul	w8, w8, w24
    2aa0: eb28c33f     	cmp	x25, w8, sxtw
    2aa4: 54fffc8b     	b.lt	0x2a34 <aw22xxx_para_show+0x64>
    2aa8: 14000004     	b	0x2ab8 <aw22xxx_para_show+0xe8>
    2aac: aa1f03e0     	mov	x0, xzr
    2ab0: 14000009     	b	0x2ad4 <aw22xxx_para_show+0x104>
    2ab4: aa1f03f6     	mov	x22, xzr
    2ab8: 52820008     	mov	w8, #0x1000             // =4096
    2abc: 90000002     	adrp	x2, 0x2000 <aw22xxx_cfg_update_wait_from_dyn_name+0xb4>
		0000000000002abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb0
    2ac0: 91000042     	add	x2, x2, #0x0
		0000000000002ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb0
    2ac4: cb160101     	sub	x1, x8, x22
    2ac8: 8b160260     	add	x0, x19, x22
    2acc: 94000000     	bl	0x2acc <aw22xxx_para_show+0xfc>
		0000000000002acc:  R_AARCH64_CALL26	snprintf
    2ad0: 8b20c2c0     	add	x0, x22, w0, sxtw
    2ad4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2ad8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    2adc: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2ae0: a94267fa     	ldp	x26, x25, [sp, #0x20]
    2ae4: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    2ae8: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    2aec: d50323bf     	autiasp
    2af0: d65f03c0     	ret
    2af4: d42aa240     	brk	#0x5512
    2af8: d4200020     	brk	#0x1
