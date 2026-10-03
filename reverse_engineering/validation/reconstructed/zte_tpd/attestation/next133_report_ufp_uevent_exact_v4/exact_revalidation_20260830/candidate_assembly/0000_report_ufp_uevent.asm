
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001bec4 <report_ufp_uevent>:
   1bec4: d503233f     	paciasp
   1bec8: d10103ff     	sub	sp, sp, #0x40
   1becc: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1bed0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1bed4: 910083fd     	add	x29, sp, #0x20
   1bed8: d5384108     	mrs	x8, SP_EL0
   1bedc: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001bedc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1bee0: f9438908     	ldr	x8, [x8, #0x710]
   1bee4: f81f83a8     	stur	x8, [x29, #-0x8]
   1bee8: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bee8:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent.area_meet_down
   1beec: f9400133     	ldr	x19, [x9]
		000000000001beec:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1bef0: 39400109     	ldrb	w9, [x8]
		000000000001bef0:  R_AARCH64_LDST8_ABS_LO12_NC	report_ufp_uevent.area_meet_down
   1bef4: 34000040     	cbz	w0, 0x1befc <report_ufp_uevent+0x38>
   1bef8: 360001e9     	tbz	w9, #0x0, 0x1bf34 <report_ufp_uevent+0x70>
   1befc: 7100001f     	cmp	w0, #0x0
   1bf00: 1a8913e9     	csel	w9, wzr, w9, ne
   1bf04: 7100053f     	cmp	w9, #0x1
   1bf08: 540002e0     	b.eq	0x1bf64 <report_ufp_uevent+0xa0>
   1bf0c: d5384108     	mrs	x8, SP_EL0
   1bf10: f9438908     	ldr	x8, [x8, #0x710]
   1bf14: f85f83a9     	ldur	x9, [x29, #-0x8]
   1bf18: eb09011f     	cmp	x8, x9
   1bf1c: 54001121     	b.ne	0x1c140 <report_ufp_uevent+0x27c>
   1bf20: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1bf24: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1bf28: 910103ff     	add	sp, sp, #0x40
   1bf2c: d50323bf     	autiasp
   1bf30: d65f03c0     	ret
   1bf34: 52800029     	mov	w9, #0x1                // =1
   1bf38: 90000013     	adrp	x19, 0x1b000 <string_change+0x404>
		000000000001bf38:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1bf3c: 39000109     	strb	w9, [x8]
		000000000001bf3c:  R_AARCH64_LDST8_ABS_LO12_NC	report_ufp_uevent.area_meet_down
   1bf40: b9400268     	ldr	w8, [x19]
		000000000001bf40:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1bf44: 35000208     	cbnz	w8, 0x1bf84 <report_ufp_uevent+0xc0>
   1bf48: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bf48:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1bf4c: f9400108     	ldr	x8, [x8]
		000000000001bf4c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1bf50: b5000908     	cbnz	x8, 0x1c070 <report_ufp_uevent+0x1ac>
   1bf54: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bf54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a86
   1bf58: 91000000     	add	x0, x0, #0x0
		000000000001bf58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a86
   1bf5c: 94000000     	bl	0x1bf5c <report_ufp_uevent+0x98>
		000000000001bf5c:  R_AARCH64_CALL26	_printk
   1bf60: 14000058     	b	0x1c0c0 <report_ufp_uevent+0x1fc>
   1bf64: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001bf64:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1bf68: 3900011f     	strb	wzr, [x8]
		000000000001bf68:  R_AARCH64_LDST8_ABS_LO12_NC	report_ufp_uevent.area_meet_down
   1bf6c: f9400129     	ldr	x9, [x9]
		000000000001bf6c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1bf70: b5000189     	cbnz	x9, 0x1bfa0 <report_ufp_uevent+0xdc>
   1bf74: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bf74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a86
   1bf78: 91000000     	add	x0, x0, #0x0
		000000000001bf78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a86
   1bf7c: 94000000     	bl	0x1bf7c <report_ufp_uevent+0xb8>
		000000000001bf7c:  R_AARCH64_CALL26	_printk
   1bf80: 1400001d     	b	0x1bff4 <report_ufp_uevent+0x130>
   1bf84: 90000014     	adrp	x20, 0x1b000 <string_change+0x404>
		000000000001bf84:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1bf88: f9400288     	ldr	x8, [x20]
		000000000001bf88:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1bf8c: b5000a28     	cbnz	x8, 0x1c0d0 <report_ufp_uevent+0x20c>
   1bf90: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bf90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a86
   1bf94: 91000000     	add	x0, x0, #0x0
		000000000001bf94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a86
   1bf98: 94000000     	bl	0x1bf98 <report_ufp_uevent+0xd4>
		000000000001bf98:  R_AARCH64_CALL26	_printk
   1bf9c: 14000065     	b	0x1c130 <report_ufp_uevent+0x26c>
   1bfa0: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bfa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf1a
   1bfa4: 91000108     	add	x8, x8, #0x0
		000000000001bfa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf1a
   1bfa8: f90003e8     	str	x8, [sp]
   1bfac: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bfac:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1bfb0: b9400108     	ldr	w8, [x8]
		000000000001bfb0:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1bfb4: 71000d1f     	cmp	w8, #0x3
   1bfb8: 54000c62     	b.hs	0x1c144 <report_ufp_uevent+0x280>
   1bfbc: 9000000a     	adrp	x10, 0x1b000 <string_change+0x404>
		000000000001bfbc:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent_tppower_to_str
   1bfc0: 9100014a     	add	x10, x10, #0x0
		000000000001bfc0:  R_AARCH64_ADD_ABS_LO12_NC	report_ufp_uevent_tppower_to_str
   1bfc4: 91004120     	add	x0, x9, #0x10
   1bfc8: f8687948     	ldr	x8, [x10, x8, lsl #3]
   1bfcc: 910003e2     	mov	x2, sp
   1bfd0: 52800041     	mov	w1, #0x2                // =2
   1bfd4: a900ffe8     	stp	x8, xzr, [sp, #0x8]
   1bfd8: 94000000     	bl	0x1bfd8 <report_ufp_uevent+0x114>
		000000000001bfd8:  R_AARCH64_CALL26	kobject_uevent_env
   1bfdc: f94007e2     	ldr	x2, [sp, #0x8]
   1bfe0: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001bfe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6abe
   1bfe4: 91000000     	add	x0, x0, #0x0
		000000000001bfe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6abe
   1bfe8: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001bfe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf1a
   1bfec: 91000021     	add	x1, x1, #0x0
		000000000001bfec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf1a
   1bff0: 94000000     	bl	0x1bff0 <report_ufp_uevent+0x12c>
		000000000001bff0:  R_AARCH64_CALL26	_printk
   1bff4: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001bff4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   1bff8: b9445a69     	ldr	w9, [x19, #0x458]
   1bffc: 39400108     	ldrb	w8, [x8]
		000000000001bffc:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
   1c000: 340002a9     	cbz	w9, 0x1c054 <report_ufp_uevent+0x190>
   1c004: 90000014     	adrp	x20, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c004:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
   1c008: 34000108     	cbz	w8, 0x1c028 <report_ufp_uevent+0x164>
   1c00c: 39400288     	ldrb	w8, [x20]
		000000000001c00c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
   1c010: 370000c8     	tbnz	w8, #0x0, 0x1c028 <report_ufp_uevent+0x164>
   1c014: 90000013     	adrp	x19, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c014:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
   1c018: 91000273     	add	x19, x19, #0x0
		000000000001c018:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
   1c01c: aa1303e0     	mov	x0, x19
   1c020: 94000000     	bl	0x1c020 <report_ufp_uevent+0x15c>
		000000000001c020:  R_AARCH64_CALL26	complete
   1c024: 3900827f     	strb	wzr, [x19, #0x20]
   1c028: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c028:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
   1c02c: 39400109     	ldrb	w9, [x8]
		000000000001c02c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
   1c030: 7100053f     	cmp	w9, #0x1
   1c034: 54fff6c1     	b.ne	0x1bf0c <report_ufp_uevent+0x48>
   1c038: 39400289     	ldrb	w9, [x20]
		000000000001c038:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
   1c03c: 3707f689     	tbnz	w9, #0x0, 0x1bf0c <report_ufp_uevent+0x48>
   1c040: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x630c
   1c044: 91000000     	add	x0, x0, #0x0
		000000000001c044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x630c
   1c048: 3900011f     	strb	wzr, [x8]
		000000000001c048:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
   1c04c: 94000000     	bl	0x1c04c <report_ufp_uevent+0x188>
		000000000001c04c:  R_AARCH64_CALL26	_printk
   1c050: 17ffffaf     	b	0x1bf0c <report_ufp_uevent+0x48>
   1c054: 34fff5c8     	cbz	w8, 0x1bf0c <report_ufp_uevent+0x48>
   1c058: 90000013     	adrp	x19, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c058:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
   1c05c: 91000273     	add	x19, x19, #0x0
		000000000001c05c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
   1c060: aa1303e0     	mov	x0, x19
   1c064: 94000000     	bl	0x1c064 <report_ufp_uevent+0x1a0>
		000000000001c064:  R_AARCH64_CALL26	complete
   1c068: 3900827f     	strb	wzr, [x19, #0x20]
   1c06c: 17ffffa8     	b	0x1bf0c <report_ufp_uevent+0x48>
   1c070: 90000009     	adrp	x9, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc31c
   1c074: 91000129     	add	x9, x9, #0x0
		000000000001c074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc31c
   1c078: f90003e9     	str	x9, [sp]
   1c07c: b9400269     	ldr	w9, [x19]
		000000000001c07c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1c080: 71000d3f     	cmp	w9, #0x3
   1c084: 54000602     	b.hs	0x1c144 <report_ufp_uevent+0x280>
   1c088: 9000000a     	adrp	x10, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c088:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent_tppower_to_str
   1c08c: 9100014a     	add	x10, x10, #0x0
		000000000001c08c:  R_AARCH64_ADD_ABS_LO12_NC	report_ufp_uevent_tppower_to_str
   1c090: 91004100     	add	x0, x8, #0x10
   1c094: f8697949     	ldr	x9, [x10, x9, lsl #3]
   1c098: 910003e2     	mov	x2, sp
   1c09c: 52800041     	mov	w1, #0x2                // =2
   1c0a0: a900ffe9     	stp	x9, xzr, [sp, #0x8]
   1c0a4: 94000000     	bl	0x1c0a4 <report_ufp_uevent+0x1e0>
		000000000001c0a4:  R_AARCH64_CALL26	kobject_uevent_env
   1c0a8: f94007e2     	ldr	x2, [sp, #0x8]
   1c0ac: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c0ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6abe
   1c0b0: 91000000     	add	x0, x0, #0x0
		000000000001c0b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6abe
   1c0b4: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c0b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc31c
   1c0b8: 91000021     	add	x1, x1, #0x0
		000000000001c0b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc31c
   1c0bc: 94000000     	bl	0x1c0bc <report_ufp_uevent+0x1f8>
		000000000001c0bc:  R_AARCH64_CALL26	_printk
   1c0c0: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c0c0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
   1c0c4: 52800029     	mov	w9, #0x1                // =1
   1c0c8: 39000109     	strb	w9, [x8]
		000000000001c0c8:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
   1c0cc: 17ffff90     	b	0x1bf0c <report_ufp_uevent+0x48>
   1c0d0: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   1c0d4: 91000000     	add	x0, x0, #0x0
		000000000001c0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   1c0d8: 94000000     	bl	0x1c0d8 <report_ufp_uevent+0x214>
		000000000001c0d8:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1c0dc: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c0dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4052
   1c0e0: 91000108     	add	x8, x8, #0x0
		000000000001c0e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4052
   1c0e4: f90003e8     	str	x8, [sp]
   1c0e8: b9400268     	ldr	w8, [x19]
		000000000001c0e8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1c0ec: 71000d1f     	cmp	w8, #0x3
   1c0f0: 540002a2     	b.hs	0x1c144 <report_ufp_uevent+0x280>
   1c0f4: 90000009     	adrp	x9, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c0f4:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent_tppower_to_str
   1c0f8: 91000129     	add	x9, x9, #0x0
		000000000001c0f8:  R_AARCH64_ADD_ABS_LO12_NC	report_ufp_uevent_tppower_to_str
   1c0fc: 910003e2     	mov	x2, sp
   1c100: f8687928     	ldr	x8, [x9, x8, lsl #3]
   1c104: f9400289     	ldr	x9, [x20]
		000000000001c104:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1c108: 52800041     	mov	w1, #0x2                // =2
   1c10c: 91004120     	add	x0, x9, #0x10
   1c110: a900ffe8     	stp	x8, xzr, [sp, #0x8]
   1c114: 94000000     	bl	0x1c114 <report_ufp_uevent+0x250>
		000000000001c114:  R_AARCH64_CALL26	kobject_uevent_env
   1c118: f94007e2     	ldr	x2, [sp, #0x8]
   1c11c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c11c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6abe
   1c120: 91000000     	add	x0, x0, #0x0
		000000000001c120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6abe
   1c124: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4052
   1c128: 91000021     	add	x1, x1, #0x0
		000000000001c128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4052
   1c12c: 94000000     	bl	0x1c12c <report_ufp_uevent+0x268>
		000000000001c12c:  R_AARCH64_CALL26	_printk
   1c130: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0x13c>
		000000000001c130:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   1c134: 52800029     	mov	w9, #0x1                // =1
   1c138: 39000109     	strb	w9, [x8]
		000000000001c138:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
   1c13c: 17ffff74     	b	0x1bf0c <report_ufp_uevent+0x48>
   1c140: 94000000     	bl	0x1c140 <report_ufp_uevent+0x27c>
		000000000001c140:  R_AARCH64_CALL26	__stack_chk_fail
   1c144: d42aa240     	brk	#0x5512
