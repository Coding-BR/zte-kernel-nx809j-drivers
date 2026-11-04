
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010cc <netlink_init>:
    10cc: d503233f     	paciasp
    10d0: d10103ff     	sub	sp, sp, #0x40
    10d4: a9037bfd     	stp	x29, x30, [sp, #0x30]
    10d8: 9100c3fd     	add	x29, sp, #0x30
    10dc: d5384108     	mrs	x8, SP_EL0
    10e0: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		00000000000010e0:  R_AARCH64_ADR_PREL_PG_HI21	init_net
    10e4: 91000000     	add	x0, x0, #0x0
		00000000000010e4:  R_AARCH64_ADD_ABS_LO12_NC	init_net
    10e8: f9438908     	ldr	x8, [x8, #0x710]
    10ec: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x44>
		00000000000010ec:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    10f0: 91000042     	add	x2, x2, #0x0
		00000000000010f0:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    10f4: 910003e3     	mov	x3, sp
    10f8: 52800321     	mov	w1, #0x19               // =25
    10fc: f81f83a8     	stur	x8, [x29, #-0x8]
    1100: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x44>
		0000000000001100:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1168
    1104: 91000108     	add	x8, x8, #0x0
		0000000000001104:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1168
    1108: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    110c: f90003ff     	str	xzr, [sp]
    1110: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    1114: 94000000     	bl	0x1114 <netlink_init+0x48>
		0000000000001114:  R_AARCH64_CALL26	__netlink_kernel_create
    1118: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x44>
		0000000000001118:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    111c: f9000100     	str	x0, [x8]
		000000000000111c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1120: b4000160     	cbz	x0, 0x114c <netlink_init+0x80>
    1124: 2a1f03e0     	mov	w0, wzr
    1128: d5384108     	mrs	x8, SP_EL0
    112c: f9438908     	ldr	x8, [x8, #0x710]
    1130: f85f83a9     	ldur	x9, [x29, #-0x8]
    1134: eb09011f     	cmp	x8, x9
    1138: 54000141     	b.ne	0x1160 <netlink_init+0x94>
    113c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1140: 910103ff     	add	sp, sp, #0x40
    1144: d50323bf     	autiasp
    1148: d65f03c0     	ret
    114c: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x44>
		000000000000114c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71c
    1150: 91000000     	add	x0, x0, #0x0
		0000000000001150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71c
    1154: 94000000     	bl	0x1154 <netlink_init+0x88>
		0000000000001154:  R_AARCH64_CALL26	_printk
    1158: 52800020     	mov	w0, #0x1                // =1
    115c: 17fffff3     	b	0x1128 <netlink_init+0x5c>
    1160: 94000000     	bl	0x1160 <netlink_init+0x94>
		0000000000001160:  R_AARCH64_CALL26	__stack_chk_fail
