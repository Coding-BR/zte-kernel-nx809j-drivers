
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000138 <netlink_init>:
     138: d503233f     	paciasp
     13c: d10103ff     	sub	sp, sp, #0x40
     140: a9037bfd     	stp	x29, x30, [sp, #0x30]
     144: 9100c3fd     	add	x29, sp, #0x30
     148: d5384108     	mrs	x8, SP_EL0
     14c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000014c:  R_AARCH64_ADR_PREL_PG_HI21	init_net
     150: 91000000     	add	x0, x0, #0x0
		0000000000000150:  R_AARCH64_ADD_ABS_LO12_NC	init_net
     154: f9438908     	ldr	x8, [x8, #0x710]
     158: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000158:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
     15c: 91000042     	add	x2, x2, #0x0
		000000000000015c:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
     160: 910003e3     	mov	x3, sp
     164: 52800321     	mov	w1, #0x19               // =25
     168: f81f83a8     	stur	x8, [x29, #-0x8]
     16c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000016c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1d4
     170: 91000108     	add	x8, x8, #0x0
		0000000000000170:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1d4
     174: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     178: f90003ff     	str	xzr, [sp]
     17c: a900ffe8     	stp	x8, xzr, [sp, #0x8]
     180: 94000000     	bl	0x180 <netlink_init+0x48>
		0000000000000180:  R_AARCH64_CALL26	__netlink_kernel_create
     184: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     188: f9000100     	str	x0, [x8]
		0000000000000188:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     18c: b4000160     	cbz	x0, 0x1b8 <netlink_init+0x80>
     190: 2a1f03e0     	mov	w0, wzr
     194: d5384108     	mrs	x8, SP_EL0
     198: f9438908     	ldr	x8, [x8, #0x710]
     19c: f85f83a9     	ldur	x9, [x29, #-0x8]
     1a0: eb09011f     	cmp	x8, x9
     1a4: 54000141     	b.ne	0x1cc <netlink_init+0x94>
     1a8: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     1ac: 910103ff     	add	sp, sp, #0x40
     1b0: d50323bf     	autiasp
     1b4: d65f03c0     	ret
     1b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60d
     1bc: 91000000     	add	x0, x0, #0x0
		00000000000001bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60d
     1c0: 94000000     	bl	0x1c0 <netlink_init+0x88>
		00000000000001c0:  R_AARCH64_CALL26	_printk
     1c4: 52800020     	mov	w0, #0x1                // =1
     1c8: 17fffff3     	b	0x194 <netlink_init+0x5c>
     1cc: 94000000     	bl	0x1cc <netlink_init+0x94>
		00000000000001cc:  R_AARCH64_CALL26	__stack_chk_fail
