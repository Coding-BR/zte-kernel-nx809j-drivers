
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005280 <get_aw22xxx_id>:
    5280: d503233f     	paciasp
    5284: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    5288: a90157f6     	stp	x22, x21, [sp, #0x10]
    528c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    5290: 910003fd     	mov	x29, sp
    5294: f9400068     	ldr	x8, [x3]
    5298: b40000e8     	cbz	x8, 0x52b4 <get_aw22xxx_id+0x34>
    529c: aa1f03e0     	mov	x0, xzr
    52a0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    52a4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    52a8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    52ac: d50323bf     	autiasp
    52b0: d65f03c0     	ret
    52b4: 90000013     	adrp	x19, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000052b4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x378
    52b8: 91000273     	add	x19, x19, #0x0
		00000000000052b8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x378
    52bc: aa0103f4     	mov	x20, x1
    52c0: aa0203f5     	mov	x21, x2
    52c4: aa0303f6     	mov	x22, x3
    52c8: 90000000     	adrp	x0, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000052c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe06
    52cc: 91000000     	add	x0, x0, #0x0
		00000000000052cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe06
    52d0: 90000001     	adrp	x1, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		00000000000052d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4d
    52d4: 91000021     	add	x1, x1, #0x0
		00000000000052d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4d
    52d8: 52813662     	mov	w2, #0x9b3              // =2483
    52dc: aa1303e3     	mov	x3, x19
    52e0: 94000000     	bl	0x52e0 <get_aw22xxx_id+0x60>
		00000000000052e0:  R_AARCH64_CALL26	_printk
    52e4: aa1303e0     	mov	x0, x19
    52e8: 52800401     	mov	w1, #0x20               // =32
    52ec: 94000000     	bl	0x52ec <get_aw22xxx_id+0x6c>
		00000000000052ec:  R_AARCH64_CALL26	strnlen
    52f0: aa0003e4     	mov	x4, x0
    52f4: f100841f     	cmp	x0, #0x21
    52f8: 54000142     	b.hs	0x5320 <get_aw22xxx_id+0xa0>
    52fc: f100809f     	cmp	x4, #0x20
    5300: 54000180     	b.eq	0x5330 <get_aw22xxx_id+0xb0>
    5304: aa1603e2     	mov	x2, x22
    5308: aa1503e1     	mov	x1, x21
    530c: aa1403e0     	mov	x0, x20
    5310: 90000003     	adrp	x3, 0x5000 <aw22xxx_cfg_recover_update_wait+0x14c>
		0000000000005310:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x378
    5314: 91000063     	add	x3, x3, #0x0
		0000000000005314:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x378
    5318: 94000000     	bl	0x5318 <get_aw22xxx_id+0x98>
		0000000000005318:  R_AARCH64_CALL26	simple_read_from_buffer
    531c: 17ffffe1     	b	0x52a0 <get_aw22xxx_id+0x20>
    5320: 91000482     	add	x2, x4, #0x1
    5324: 52800040     	mov	w0, #0x2                // =2
    5328: 52800401     	mov	w1, #0x20               // =32
    532c: 94000000     	bl	0x532c <get_aw22xxx_id+0xac>
		000000000000532c:  R_AARCH64_CALL26	__fortify_panic
    5330: 52800080     	mov	w0, #0x4                // =4
    5334: 52800401     	mov	w1, #0x20               // =32
    5338: 52800422     	mov	w2, #0x21               // =33
    533c: 94000000     	bl	0x533c <get_aw22xxx_id+0xbc>
		000000000000533c:  R_AARCH64_CALL26	__fortify_panic
