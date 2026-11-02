
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000524c <get_aw22xxx_id>:
    524c: d503233f     	paciasp
    5250: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    5254: a90157f6     	stp	x22, x21, [sp, #0x10]
    5258: a9024ff4     	stp	x20, x19, [sp, #0x20]
    525c: 910003fd     	mov	x29, sp
    5260: f9400068     	ldr	x8, [x3]
    5264: b40000e8     	cbz	x8, 0x5280 <get_aw22xxx_id+0x34>
    5268: aa1f03e0     	mov	x0, xzr
    526c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5270: a94157f6     	ldp	x22, x21, [sp, #0x10]
    5274: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    5278: d50323bf     	autiasp
    527c: d65f03c0     	ret
    5280: 90000013     	adrp	x19, 0x5000 <aw22xxx_cfg_recover_update_wait+0x180>
		0000000000005280:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x378
    5284: 91000273     	add	x19, x19, #0x0
		0000000000005284:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x378
    5288: aa0103f4     	mov	x20, x1
    528c: aa0203f5     	mov	x21, x2
    5290: aa0303f6     	mov	x22, x3
    5294: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x180>
		0000000000005294:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xe06
    5298: 91000000     	add	x0, x0, #0x0
		0000000000005298:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xe06
    529c: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x180>
		000000000000529c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xa4d
    52a0: 91000021     	add	x1, x1, #0x0
		00000000000052a0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xa4d
    52a4: 52813662     	mov	w2, #0x9b3              // =2483
    52a8: aa1303e3     	mov	x3, x19
    52ac: 94000000     	bl	0x52ac <get_aw22xxx_id+0x60>
		00000000000052ac:  R_AARCH64_CALL26	_printk
    52b0: aa1303e0     	mov	x0, x19
    52b4: 52800401     	mov	w1, #0x20               // =32
    52b8: 94000000     	bl	0x52b8 <get_aw22xxx_id+0x6c>
		00000000000052b8:  R_AARCH64_CALL26	strnlen
    52bc: aa0003e4     	mov	x4, x0
    52c0: f100841f     	cmp	x0, #0x21
    52c4: 54000142     	b.hs	0x52ec <get_aw22xxx_id+0xa0>
    52c8: f100809f     	cmp	x4, #0x20
    52cc: 54000180     	b.eq	0x52fc <get_aw22xxx_id+0xb0>
    52d0: aa1603e2     	mov	x2, x22
    52d4: aa1503e1     	mov	x1, x21
    52d8: aa1403e0     	mov	x0, x20
    52dc: 90000003     	adrp	x3, 0x5000 <aw22xxx_cfg_recover_update_wait+0x180>
		00000000000052dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_data_base+0x378
    52e0: 91000063     	add	x3, x3, #0x0
		00000000000052e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_data_base+0x378
    52e4: 94000000     	bl	0x52e4 <get_aw22xxx_id+0x98>
		00000000000052e4:  R_AARCH64_CALL26	simple_read_from_buffer
    52e8: 17ffffe1     	b	0x526c <get_aw22xxx_id+0x20>
    52ec: 91000482     	add	x2, x4, #0x1
    52f0: 52800040     	mov	w0, #0x2                // =2
    52f4: 52800401     	mov	w1, #0x20               // =32
    52f8: 94000000     	bl	0x52f8 <get_aw22xxx_id+0xac>
		00000000000052f8:  R_AARCH64_CALL26	__fortify_panic
    52fc: 52800080     	mov	w0, #0x4                // =4
    5300: 52800401     	mov	w1, #0x20               // =32
    5304: 52800422     	mov	w2, #0x21               // =33
    5308: 94000000     	bl	0x5308 <get_aw22xxx_id+0xbc>
		0000000000005308:  R_AARCH64_CALL26	__fortify_panic
