
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000025674 <tpd_set_one_key>:
   25674: d503233f     	paciasp
   25678: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   2567c: f9000bf5     	str	x21, [sp, #0x10]
   25680: a9024ff4     	stp	x20, x19, [sp, #0x20]
   25684: 910003fd     	mov	x29, sp
   25688: aa0003f3     	mov	x19, x0
   2568c: f946dc15     	ldr	x21, [x0, #0xdb8]
   25690: 2a0103f4     	mov	w20, w1
   25694: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		0000000000025694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   25698: 91000000     	add	x0, x0, #0x0
		0000000000025698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   2569c: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		000000000002569c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9b
   256a0: 91000021     	add	x1, x1, #0x0
		00000000000256a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9b
   256a4: 94000000     	bl	0x256a4 <tpd_set_one_key+0x30>
		00000000000256a4:  R_AARCH64_CALL26	_printk
   256a8: b40000b5     	cbz	x21, 0x256bc <tpd_set_one_key+0x48>
   256ac: 2a1f03e0     	mov	w0, wzr
   256b0: b905d6b4     	str	w20, [x21, #0x5d4]
   256b4: b9045a74     	str	w20, [x19, #0x458]
   256b8: 14000002     	b	0x256c0 <tpd_set_one_key+0x4c>
   256bc: 128002a0     	mov	w0, #-0x16              // =-22
   256c0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   256c4: f9400bf5     	ldr	x21, [sp, #0x10]
   256c8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   256cc: d50323bf     	autiasp
   256d0: d65f03c0     	ret
