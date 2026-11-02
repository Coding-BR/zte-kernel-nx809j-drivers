
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005324 <get_aw22xxx_id>:
    5324: d503233f     	paciasp
    5328: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    532c: a90157f6     	stp	x22, x21, [sp, #0x10]
    5330: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5334: 910003fd     	mov	x29, sp
    5338: f9400068     	ldr	x8, [x3]
    533c: b40000e8     	cbz	x8, 0x5358 <get_aw22xxx_id+0x34>
    5340: aa1f03e0     	mov	x0, xzr
    5344: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5348: a94157f6     	ldp	x22, x21, [sp, #0x10]
    534c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5350: d50323bf     	autiasp
    5354: d65f03c0     	ret
    5358: 90000013     	adrp	x19, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005358:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x378
    535c: 91000273     	add	x19, x19, #0x0
		000000000000535c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x378
    5360: aa0103f4     	mov	x20, x1
    5364: aa0203f5     	mov	x21, x2
    5368: aa0303f6     	mov	x22, x3
    536c: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		000000000000536c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe06
    5370: 91000000     	add	x0, x0, #0x0
		0000000000005370:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe06
    5374: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		0000000000005374:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa4d
    5378: 91000021     	add	x1, x1, #0x0
		0000000000005378:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa4d
    537c: 52813662     	mov	w2, #0x9b3              // =2483
    5380: aa1303e3     	mov	x3, x19
    5384: 94000000     	bl	0x5384 <get_aw22xxx_id+0x60>
		0000000000005384:  R_AARCH64_CALL26	_printk
    5388: aa1303e0     	mov	x0, x19
    538c: 52800401     	mov	w1, #0x20               // =32
    5390: 94000000     	bl	0x5390 <get_aw22xxx_id+0x6c>
		0000000000005390:  R_AARCH64_CALL26	strnlen
    5394: aa0003e4     	mov	x4, x0
    5398: f100841f     	cmp	x0, #0x21
    539c: 54000142     	b.hs	0x53c4 <get_aw22xxx_id+0xa0>
    53a0: f100809f     	cmp	x4, #0x20
    53a4: 54000180     	b.eq	0x53d4 <get_aw22xxx_id+0xb0>
    53a8: aa1603e2     	mov	x2, x22
    53ac: aa1503e1     	mov	x1, x21
    53b0: aa1403e0     	mov	x0, x20
    53b4: 90000003     	adrp	x3, 0x5000 <aw22xxx_cfg_recover_update_wait+0xa8>
		00000000000053b4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x378
    53b8: 91000063     	add	x3, x3, #0x0
		00000000000053b8:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x378
    53bc: 94000000     	bl	0x53bc <get_aw22xxx_id+0x98>
		00000000000053bc:  R_AARCH64_CALL26	simple_read_from_buffer
    53c0: 17ffffe1     	b	0x5344 <get_aw22xxx_id+0x20>
    53c4: 91000482     	add	x2, x4, #0x1
    53c8: 52800040     	mov	w0, #0x2                // =2
    53cc: 52800401     	mov	w1, #0x20               // =32
    53d0: 94000000     	bl	0x53d0 <get_aw22xxx_id+0xac>
		00000000000053d0:  R_AARCH64_CALL26	__fortify_panic
    53d4: 52800080     	mov	w0, #0x4                // =4
    53d8: 52800401     	mov	w1, #0x20               // =32
    53dc: 52800422     	mov	w2, #0x21               // =33
    53e0: 94000000     	bl	0x53e0 <get_aw22xxx_id+0xbc>
		00000000000053e0:  R_AARCH64_CALL26	__fortify_panic
