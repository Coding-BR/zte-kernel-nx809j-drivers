
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010d0 <netlink_init>:
    10d0: d503233f     	paciasp
    10d4: d10103ff     	sub	sp, sp, #0x40
    10d8: a9037bfd     	stp	x29, x30, [sp, #0x30]
    10dc: 9100c3fd     	add	x29, sp, #0x30
    10e0: d5384108     	mrs	x8, SP_EL0
    10e4: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		00000000000010e4:  R_AARCH64_ADR_PREL_PG_HI21	init_net
    10e8: 91000000     	add	x0, x0, #0x0
		00000000000010e8:  R_AARCH64_ADD_ABS_LO12_NC	init_net
    10ec: f9438908     	ldr	x8, [x8, #0x710]
    10f0: 90000002     	adrp	x2, 0x1000 <sendnlmsg+0x40>
		00000000000010f0:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    10f4: 91000042     	add	x2, x2, #0x0
		00000000000010f4:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    10f8: 910003e3     	mov	x3, sp
    10fc: 52800321     	mov	w1, #0x19               // =25
    1100: f81f83a8     	stur	x8, [x29, #-0x8]
    1104: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x40>
		0000000000001104:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x116c
    1108: 91000108     	add	x8, x8, #0x0
		0000000000001108:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x116c
    110c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1110: f90003ff     	str	xzr, [sp]
    1114: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    1118: 94000000     	bl	0x1118 <netlink_init+0x48>
		0000000000001118:  R_AARCH64_CALL26	__netlink_kernel_create
    111c: 90000008     	adrp	x8, 0x1000 <sendnlmsg+0x40>
		000000000000111c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1120: f9000100     	str	x0, [x8]
		0000000000001120:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1124: b4000160     	cbz	x0, 0x1150 <netlink_init+0x80>
    1128: 2a1f03e0     	mov	w0, wzr
    112c: d5384108     	mrs	x8, SP_EL0
    1130: f9438908     	ldr	x8, [x8, #0x710]
    1134: f85f83a9     	ldur	x9, [x29, #-0x8]
    1138: eb09011f     	cmp	x8, x9
    113c: 54000141     	b.ne	0x1164 <netlink_init+0x94>
    1140: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1144: 910103ff     	add	sp, sp, #0x40
    1148: d50323bf     	autiasp
    114c: d65f03c0     	ret
    1150: 90000000     	adrp	x0, 0x1000 <sendnlmsg+0x40>
		0000000000001150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71c
    1154: 91000000     	add	x0, x0, #0x0
		0000000000001154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71c
    1158: 94000000     	bl	0x1158 <netlink_init+0x88>
		0000000000001158:  R_AARCH64_CALL26	_printk
    115c: 52800020     	mov	w0, #0x1                // =1
    1160: 17fffff3     	b	0x112c <netlink_init+0x5c>
    1164: 94000000     	bl	0x1164 <netlink_init+0x94>
		0000000000001164:  R_AARCH64_CALL26	__stack_chk_fail
