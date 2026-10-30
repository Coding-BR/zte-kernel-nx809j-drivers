
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000257c8 <tpd_test_cmd_show>:
   257c8: d503233f     	paciasp
   257cc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   257d0: f9000bf3     	str	x19, [sp, #0x10]
   257d4: 910003fd     	mov	x29, sp
   257d8: aa0103f3     	mov	x19, x1
   257dc: 90000000     	adrp	x0, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000257dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3346
   257e0: 91000000     	add	x0, x0, #0x0
		00000000000257e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3346
   257e4: 90000001     	adrp	x1, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000257e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6016
   257e8: 91000021     	add	x1, x1, #0x0
		00000000000257e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6016
   257ec: 94000000     	bl	0x257ec <tpd_test_cmd_show+0x24>
		00000000000257ec:  R_AARCH64_CALL26	_printk
   257f0: 90000002     	adrp	x2, 0x25000 <syna_tpd_register_fw_class+0x32c>
		00000000000257f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7299
   257f4: 91000042     	add	x2, x2, #0x0
		00000000000257f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7299
   257f8: aa1303e0     	mov	x0, x19
   257fc: 52820001     	mov	w1, #0x1000             // =4096
   25800: 2a1f03e3     	mov	w3, wzr
   25804: 52800204     	mov	w4, #0x10               // =16
   25808: 528004a5     	mov	w5, #0x25               // =37
   2580c: 2a1f03e6     	mov	w6, wzr
   25810: 94000000     	bl	0x25810 <tpd_test_cmd_show+0x48>
		0000000000025810:  R_AARCH64_CALL26	snprintf
   25814: f9400bf3     	ldr	x19, [sp, #0x10]
   25818: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   2581c: d50323bf     	autiasp
   25820: d65f03c0     	ret
