
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001024 <rdbg_release>:
    1024: d503233f     	paciasp
    1028: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    102c: f9000bf7     	str	x23, [sp, #0x10]
    1030: a90257f6     	stp	x22, x21, [sp, #0x20]
    1034: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1038: 910003fd     	mov	x29, sp
    103c: b4000420     	cbz	x0, 0x10c0 <rdbg_release+0x9c>
    1040: 90000015     	adrp	x21, 0x1000 <rdbg_open+0x5dc>
		0000000000001040:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
    1044: f94002a8     	ldr	x8, [x21]
		0000000000001044:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
    1048: b40003c8     	cbz	x8, 0x10c0 <rdbg_release+0x9c>
    104c: b9404c09     	ldr	w9, [x0, #0x4c]
    1050: aa0103f3     	mov	x19, x1
    1054: 92404d34     	and	x20, x9, #0xfffff
    1058: 52803909     	mov	w9, #0x1c8              // =456
    105c: 9ba92288     	umaddl	x8, w20, w9, x8
    1060: 39418109     	ldrb	w9, [x8, #0x60]
    1064: 7100053f     	cmp	w9, #0x1
    1068: 54000661     	b.ne	0x1134 <rdbg_release+0x110>
    106c: 91002100     	add	x0, x8, #0x8
    1070: 32089ff6     	mov	w22, #-0xff0100         // =-16711936
    1074: 3901811f     	strb	wzr, [x8, #0x60]
    1078: 94000000     	bl	0x1078 <rdbg_release+0x54>
		0000000000001078:  R_AARCH64_CALL26	complete
    107c: 52803909     	mov	w9, #0x1c8              // =456
    1080: f94002a8     	ldr	x8, [x21]
		0000000000001080:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
    1084: 9ba92297     	umaddl	x23, w20, w9, x8
    1088: b940aae9     	ldr	w9, [x23, #0xa8]
    108c: 6b16013f     	cmp	w9, w22
    1090: 540002a1     	b.ne	0x10e4 <rdbg_release+0xc0>
    1094: b84c02e8     	ldur	w8, [x23, #0xc0]
    1098: 7100091f     	cmp	w8, #0x2
    109c: 540001c0     	b.eq	0x10d4 <rdbg_release+0xb0>
    10a0: 7100051f     	cmp	w8, #0x1
    10a4: 540001c1     	b.ne	0x10dc <rdbg_release+0xb8>
    10a8: f84802e8     	ldur	x8, [x23, #0x80]
    10ac: b900011f     	str	wzr, [x8]
    10b0: f84b82e0     	ldur	x0, [x23, #0xb8]
    10b4: 94000000     	bl	0x10b4 <rdbg_release+0x90>
		00000000000010b4:  R_AARCH64_CALL26	kfree
    10b8: f80b82ff     	stur	xzr, [x23, #0xb8]
    10bc: 14000008     	b	0x10dc <rdbg_release+0xb8>
    10c0: 90000000     	adrp	x0, 0x1000 <rdbg_open+0x5dc>
		00000000000010c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
    10c4: 91000000     	add	x0, x0, #0x0
		00000000000010c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
    10c8: 94000000     	bl	0x10c8 <rdbg_release+0xa4>
		00000000000010c8:  R_AARCH64_CALL26	_printk
    10cc: 12800240     	mov	w0, #-0x13              // =-19
    10d0: 1400001b     	b	0x113c <rdbg_release+0x118>
    10d4: f84882e8     	ldur	x8, [x23, #0x88]
    10d8: b900011f     	str	wzr, [x8]
    10dc: b80a82ff     	stur	wzr, [x23, #0xa8]
    10e0: f94002a8     	ldr	x8, [x21]
		00000000000010e0:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
    10e4: 52803909     	mov	w9, #0x1c8              // =456
    10e8: 9ba92288     	umaddl	x8, w20, w9, x8
    10ec: b940f909     	ldr	w9, [x8, #0xf8]
    10f0: 6b16013f     	cmp	w9, w22
    10f4: 54000201     	b.ne	0x1134 <rdbg_release+0x110>
    10f8: 91032114     	add	x20, x8, #0xc8
    10fc: b9404a88     	ldr	w8, [x20, #0x48]
    1100: 7100091f     	cmp	w8, #0x2
    1104: 54000120     	b.eq	0x1128 <rdbg_release+0x104>
    1108: 7100051f     	cmp	w8, #0x1
    110c: 54000121     	b.ne	0x1130 <rdbg_release+0x10c>
    1110: f9400688     	ldr	x8, [x20, #0x8]
    1114: b900011f     	str	wzr, [x8]
    1118: f9402280     	ldr	x0, [x20, #0x40]
    111c: 94000000     	bl	0x111c <rdbg_release+0xf8>
		000000000000111c:  R_AARCH64_CALL26	kfree
    1120: f900229f     	str	xzr, [x20, #0x40]
    1124: 14000003     	b	0x1130 <rdbg_release+0x10c>
    1128: f9400a88     	ldr	x8, [x20, #0x10]
    112c: b900011f     	str	wzr, [x8]
    1130: b900329f     	str	wzr, [x20, #0x30]
    1134: 2a1f03e0     	mov	w0, wzr
    1138: f900127f     	str	xzr, [x19, #0x20]
    113c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1140: f9400bf7     	ldr	x23, [sp, #0x10]
    1144: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1148: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    114c: d50323bf     	autiasp
    1150: d65f03c0     	ret
