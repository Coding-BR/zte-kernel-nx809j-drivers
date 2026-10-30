
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000051e4 <aw22xxx_fw_work_routine>:
    51e4: d503233f     	paciasp
    51e8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    51ec: f9000bf5     	str	x21, [sp, #0x10]
    51f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    51f4: 910003fd     	mov	x29, sp
    51f8: 90000015     	adrp	x21, 0x5000 <aw22xxx_multi_breath_pattern_store+0x4>
		00000000000051f8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    51fc: 910002b5     	add	x21, x21, #0x0
		00000000000051fc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    5200: aa0003f3     	mov	x19, x0
    5204: d1084014     	sub	x20, x0, #0x210
    5208: 90000001     	adrp	x1, 0x5000 <aw22xxx_multi_breath_pattern_store+0x4>
		0000000000005208:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1098
    520c: 91000021     	add	x1, x1, #0x0
		000000000000520c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1098
    5210: aa1503e0     	mov	x0, x21
    5214: 94000000     	bl	0x5214 <aw22xxx_fw_work_routine+0x30>
		0000000000005214:  R_AARCH64_CALL26	_printk
    5218: 90000001     	adrp	x1, 0x5000 <aw22xxx_multi_breath_pattern_store+0x4>
		0000000000005218:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1778
    521c: 91000021     	add	x1, x1, #0x0
		000000000000521c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1778
    5220: aa1503e0     	mov	x0, x21
    5224: 94000000     	bl	0x5224 <aw22xxx_fw_work_routine+0x40>
		0000000000005224:  R_AARCH64_CALL26	_printk
    5228: d1082268     	sub	x8, x19, #0x208
    522c: 52800029     	mov	w9, #0x1                // =1
    5230: 90000000     	adrp	x0, 0x5000 <aw22xxx_multi_breath_pattern_store+0x4>
		0000000000005230:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    5234: 91000000     	add	x0, x0, #0x0
		0000000000005234:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    5238: f9400103     	ldr	x3, [x8]
    523c: 90000002     	adrp	x2, 0x5000 <aw22xxx_multi_breath_pattern_store+0x4>
		000000000000523c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61d8
    5240: 91000042     	add	x2, x2, #0x0
		0000000000005240:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61d8
    5244: 90000006     	adrp	x6, 0x5000 <aw22xxx_multi_breath_pattern_store+0x4>
		0000000000005244:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_fw_loaded
    5248: 910000c6     	add	x6, x6, #0x0
		0000000000005248:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_fw_loaded
    524c: 52800021     	mov	w1, #0x1                // =1
    5250: 52819804     	mov	w4, #0xcc0              // =3264
    5254: aa1403e5     	mov	x5, x20
    5258: 39037e69     	strb	w9, [x19, #0xdf]
    525c: 94000000     	bl	0x525c <aw22xxx_fw_work_routine+0x78>
		000000000000525c:  R_AARCH64_CALL26	request_firmware_nowait
    5260: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5264: f9400bf5     	ldr	x21, [sp, #0x10]
    5268: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    526c: d50323bf     	autiasp
    5270: d65f03c0     	ret
