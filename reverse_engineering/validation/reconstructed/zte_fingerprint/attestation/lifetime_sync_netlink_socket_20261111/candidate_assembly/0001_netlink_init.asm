
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000158 <netlink_init>:
     158: d503233f     	paciasp
     15c: d10143ff     	sub	sp, sp, #0x50
     160: a9037bfd     	stp	x29, x30, [sp, #0x30]
     164: a9044ff4     	stp	x20, x19, [sp, #0x40]
     168: 9100c3fd     	add	x29, sp, #0x30
     16c: d5384108     	mrs	x8, SP_EL0
     170: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000170:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     174: 91000273     	add	x19, x19, #0x0
		0000000000000174:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     178: f9438908     	ldr	x8, [x8, #0x710]
     17c: aa1303e0     	mov	x0, x19
     180: f81f83a8     	stur	x8, [x29, #-0x8]
     184: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000184:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x218
     188: 91000108     	add	x8, x8, #0x0
		0000000000000188:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x218
     18c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     190: f90003ff     	str	xzr, [sp]
     194: a900ffe8     	stp	x8, xzr, [sp, #0x8]
     198: 94000000     	bl	0x198 <netlink_init+0x40>
		0000000000000198:  R_AARCH64_CALL26	mutex_lock
     19c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000019c:  R_AARCH64_ADR_PREL_PG_HI21	init_net
     1a0: 91000000     	add	x0, x0, #0x0
		00000000000001a0:  R_AARCH64_ADD_ABS_LO12_NC	init_net
     1a4: 90000002     	adrp	x2, 0x0 <.text>
		00000000000001a4:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
     1a8: 91000042     	add	x2, x2, #0x0
		00000000000001a8:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
     1ac: 910003e3     	mov	x3, sp
     1b0: 52800321     	mov	w1, #0x19               // =25
     1b4: 94000000     	bl	0x1b4 <netlink_init+0x5c>
		00000000000001b4:  R_AARCH64_CALL26	__netlink_kernel_create
     1b8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001b8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     1bc: aa0003f4     	mov	x20, x0
     1c0: f9000100     	str	x0, [x8]
		00000000000001c0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss
     1c4: aa1303e0     	mov	x0, x19
     1c8: 94000000     	bl	0x1c8 <netlink_init+0x70>
		00000000000001c8:  R_AARCH64_CALL26	mutex_unlock
     1cc: b4000194     	cbz	x20, 0x1fc <netlink_init+0xa4>
     1d0: 2a1f03e0     	mov	w0, wzr
     1d4: d5384108     	mrs	x8, SP_EL0
     1d8: f9438908     	ldr	x8, [x8, #0x710]
     1dc: f85f83a9     	ldur	x9, [x29, #-0x8]
     1e0: eb09011f     	cmp	x8, x9
     1e4: 54000161     	b.ne	0x210 <netlink_init+0xb8>
     1e8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     1ec: a9437bfd     	ldp	x29, x30, [sp, #0x30]
     1f0: 910143ff     	add	sp, sp, #0x50
     1f4: d50323bf     	autiasp
     1f8: d65f03c0     	ret
     1fc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x92d
     200: 91000000     	add	x0, x0, #0x0
		0000000000000200:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x92d
     204: 94000000     	bl	0x204 <netlink_init+0xac>
		0000000000000204:  R_AARCH64_CALL26	_printk
     208: 52800020     	mov	w0, #0x1                // =1
     20c: 17fffff2     	b	0x1d4 <netlink_init+0x7c>
     210: 94000000     	bl	0x210 <netlink_init+0xb8>
		0000000000000210:  R_AARCH64_CALL26	__stack_chk_fail
