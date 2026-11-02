
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000049c <zte_ir_open>:
     49c: d503233f     	paciasp
     4a0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     4a4: f9000bf5     	str	x21, [sp, #0x10]
     4a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
     4ac: 910003fd     	mov	x29, sp
     4b0: aa0003f4     	mov	x20, x0
     4b4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004b4:  R_AARCH64_ADR_PREL_PG_HI21	.data
     4b8: 91000000     	add	x0, x0, #0x0
		00000000000004b8:  R_AARCH64_ADD_ABS_LO12_NC	.data
     4bc: aa0103f3     	mov	x19, x1
     4c0: 94000000     	bl	0x4c0 <zte_ir_open+0x24>
		00000000000004c0:  R_AARCH64_CALL26	mutex_lock
     4c4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     4c8: 91000108     	add	x8, x8, #0x0
		00000000000004c8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     4cc: 92871ae9     	mov	x9, #-0x38d8            // =-14552
     4d0: f2bfffc9     	movk	x9, #0xfffe, lsl #16
     4d4: aa0803ea     	mov	x10, x8
     4d8: f940014a     	ldr	x10, [x10]
     4dc: eb08015f     	cmp	x10, x8
     4e0: 540001e0     	b.eq	0x51c <zte_ir_open+0x80>
     4e4: 8b090155     	add	x21, x10, x9
     4e8: b9404e8c     	ldr	w12, [x20, #0x4c]
     4ec: b94002ab     	ldr	w11, [x21]
     4f0: 6b0c017f     	cmp	w11, w12
     4f4: 54ffff21     	b.ne	0x4d8 <zte_ir_open+0x3c>
     4f8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2
     4fc: 91000000     	add	x0, x0, #0x0
		00000000000004fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2
     500: 94000000     	bl	0x500 <zte_ir_open+0x64>
		0000000000000500:  R_AARCH64_CALL26	_printk
     504: aa1403e0     	mov	x0, x20
     508: aa1303e1     	mov	x1, x19
     50c: f9001275     	str	x21, [x19, #0x20]
     510: 94000000     	bl	0x510 <zte_ir_open+0x74>
		0000000000000510:  R_AARCH64_CALL26	nonseekable_open
     514: 2a1f03f3     	mov	w19, wzr
     518: 14000007     	b	0x534 <zte_ir_open+0x98>
     51c: b9404e88     	ldr	w8, [x20, #0x4c]
     520: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81
     524: 91000000     	add	x0, x0, #0x0
		0000000000000524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81
     528: 12004d01     	and	w1, w8, #0xfffff
     52c: 94000000     	bl	0x52c <zte_ir_open+0x90>
		000000000000052c:  R_AARCH64_CALL26	_printk
     530: 128000b3     	mov	w19, #-0x6              // =-6
     534: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000534:  R_AARCH64_ADR_PREL_PG_HI21	.data
     538: 91000000     	add	x0, x0, #0x0
		0000000000000538:  R_AARCH64_ADD_ABS_LO12_NC	.data
     53c: 94000000     	bl	0x53c <zte_ir_open+0xa0>
		000000000000053c:  R_AARCH64_CALL26	mutex_unlock
     540: 2a1303e0     	mov	w0, w19
     544: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     548: f9400bf5     	ldr	x21, [sp, #0x10]
     54c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     550: d50323bf     	autiasp
     554: d65f03c0     	ret
