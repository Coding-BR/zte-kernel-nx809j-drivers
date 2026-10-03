
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003910 <aw22xxx_fw_work_routine>:
    3910: d503233f     	paciasp
    3914: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3918: a9014ff4     	stp	x20, x19, [sp, #0x10]
    391c: 910003fd     	mov	x29, sp
    3920: aa0003f3     	mov	x19, x0
    3924: d1084014     	sub	x20, x0, #0x210
    3928: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    392c: 91000000     	add	x0, x0, #0x0
		000000000000392c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    3930: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x118c
    3934: 91000021     	add	x1, x1, #0x0
		0000000000003934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x118c
    3938: 94000000     	bl	0x3938 <aw22xxx_fw_work_routine+0x28>
		0000000000003938:  R_AARCH64_CALL26	_printk
    393c: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		000000000000393c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ab
    3940: 91000000     	add	x0, x0, #0x0
		0000000000003940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ab
    3944: 94000000     	bl	0x3944 <aw22xxx_fw_work_routine+0x34>
		0000000000003944:  R_AARCH64_CALL26	_printk
    3948: d1082268     	sub	x8, x19, #0x208
    394c: 52800029     	mov	w9, #0x1                // =1
    3950: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003950:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    3954: 91000000     	add	x0, x0, #0x0
		0000000000003954:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    3958: f9400103     	ldr	x3, [x8]
    395c: 90000002     	adrp	x2, 0x3000 <aw22xxx_play+0x84>
		000000000000395c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x118
    3960: 91000042     	add	x2, x2, #0x0
		0000000000003960:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x118
    3964: 90000006     	adrp	x6, 0x3000 <aw22xxx_play+0x84>
		0000000000003964:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3c44
    3968: 910000c6     	add	x6, x6, #0x0
		0000000000003968:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3c44
    396c: 52800021     	mov	w1, #0x1                // =1
    3970: 52819804     	mov	w4, #0xcc0              // =3264
    3974: aa1403e5     	mov	x5, x20
    3978: 39037e69     	strb	w9, [x19, #0xdf]
    397c: 94000000     	bl	0x397c <aw22xxx_fw_work_routine+0x6c>
		000000000000397c:  R_AARCH64_CALL26	request_firmware_nowait
    3980: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    3984: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3988: d50323bf     	autiasp
    398c: d65f03c0     	ret
