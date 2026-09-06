
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000d060 <tpd_test_cmd_show>:
    d060: d503233f     	paciasp
    d064: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    d068: f9000bf3     	str	x19, [sp, #0x10]
    d06c: 910003fd     	mov	x29, sp
    d070: aa0103f3     	mov	x19, x1
    d074: 90000000     	adrp	x0, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d074:  R_AARCH64_ADR_PREL_PG_HI21	unk_34878
    d078: 91000000     	add	x0, x0, #0x0
		000000000000d078:  R_AARCH64_ADD_ABS_LO12_NC	unk_34878
    d07c: 90000001     	adrp	x1, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d07c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b87
    d080: 91000021     	add	x1, x1, #0x0
		000000000000d080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b87
    d084: 94000000     	bl	0xd084 <tpd_test_cmd_show+0x24>
		000000000000d084:  R_AARCH64_CALL26	_printk
    d088: 90000002     	adrp	x2, 0xd000 <tpd_set_singlegamegesture+0x68>
		000000000000d088:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a466
    d08c: 91000042     	add	x2, x2, #0x0
		000000000000d08c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a466
    d090: aa1303e0     	mov	x0, x19
    d094: 52820001     	mov	w1, #0x1000             // =4096
    d098: 2a1f03e3     	mov	w3, wzr
    d09c: 52800204     	mov	w4, #0x10               // =16
    d0a0: 528004a5     	mov	w5, #0x25               // =37
    d0a4: 2a1f03e6     	mov	w6, wzr
    d0a8: 94000000     	bl	0xd0a8 <tpd_test_cmd_show+0x48>
		000000000000d0a8:  R_AARCH64_CALL26	snprintf
    d0ac: f9400bf3     	ldr	x19, [sp, #0x10]
    d0b0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    d0b4: d50323bf     	autiasp
    d0b8: d65f03c0     	ret
