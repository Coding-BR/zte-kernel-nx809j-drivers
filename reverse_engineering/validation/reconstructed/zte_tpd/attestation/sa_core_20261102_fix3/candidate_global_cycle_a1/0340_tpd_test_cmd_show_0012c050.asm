
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d0bc <tpd_test_cmd_show>:
    d0bc: d503233f     	paciasp
    d0c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d0c4: f9000bf3     	str	x19, [sp, #0x10]
    d0c8: 910003fd     	mov	x29, sp
    d0cc: aa0103f3     	mov	x19, x1
    d0d0: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d0d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
    d0d4: 91000000     	add	x0, x0, #0x0
		000000000000d0d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
    d0d8: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b87
    d0dc: 91000021     	add	x1, x1, #0x0
		000000000000d0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b87
    d0e0: 94000000     	bl	0xd0e0 <tpd_test_cmd_show+0x24>
		000000000000d0e0:  R_AARCH64_CALL26	_printk
    d0e4: 90000002     	adrp	x2, 0xd000 <tpd_set_singlegamegesture+0xc>
		000000000000d0e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a466
    d0e8: 91000042     	add	x2, x2, #0x0
		000000000000d0e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a466
    d0ec: aa1303e0     	mov	x0, x19
    d0f0: 52820001     	mov	w1, #0x1000             // =4096
    d0f4: 2a1f03e3     	mov	w3, wzr
    d0f8: 52800204     	mov	w4, #0x10               // =16
    d0fc: 528004a5     	mov	w5, #0x25               // =37
    d100: 2a1f03e6     	mov	w6, wzr
    d104: 94000000     	bl	0xd104 <tpd_test_cmd_show+0x48>
		000000000000d104:  R_AARCH64_CALL26	snprintf
    d108: f9400bf3     	ldr	x19, [sp, #0x10]
    d10c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d110: d50323bf     	autiasp
    d114: d65f03c0     	ret
