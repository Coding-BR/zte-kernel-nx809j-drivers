
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001bf20 <report_ufp_uevent>:
   1bf20: d503233f     	paciasp
   1bf24: d10103ff     	sub	sp, sp, #0x40
   1bf28: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1bf2c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1bf30: 910083fd     	add	x29, sp, #0x20
   1bf34: d5384108     	mrs	x8, SP_EL0
   1bf38: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001bf38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1bf3c: f9438908     	ldr	x8, [x8, #0x710]
   1bf40: f81f83a8     	stur	x8, [x29, #-0x8]
   1bf44: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001bf44:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent.area_meet_down
   1bf48: f9400133     	ldr	x19, [x9]
		000000000001bf48:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1bf4c: 39400109     	ldrb	w9, [x8]
		000000000001bf4c:  R_AARCH64_LDST8_ABS_LO12_NC	report_ufp_uevent.area_meet_down
   1bf50: 34000040     	cbz	w0, 0x1bf58 <report_ufp_uevent+0x38>
   1bf54: 360001e9     	tbz	w9, #0x0, 0x1bf90 <report_ufp_uevent+0x70>
   1bf58: 7100001f     	cmp	w0, #0x0
   1bf5c: 1a8913e9     	csel	w9, wzr, w9, ne
   1bf60: 7100053f     	cmp	w9, #0x1
   1bf64: 540002e0     	b.eq	0x1bfc0 <report_ufp_uevent+0xa0>
   1bf68: d5384108     	mrs	x8, SP_EL0
   1bf6c: f9438908     	ldr	x8, [x8, #0x710]
   1bf70: f85f83a9     	ldur	x9, [x29, #-0x8]
   1bf74: eb09011f     	cmp	x8, x9
   1bf78: 54001121     	b.ne	0x1c19c <report_ufp_uevent+0x27c>
   1bf7c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1bf80: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1bf84: 910103ff     	add	sp, sp, #0x40
   1bf88: d50323bf     	autiasp
   1bf8c: d65f03c0     	ret
   1bf90: 52800029     	mov	w9, #0x1                // =1
   1bf94: 90000013     	adrp	x19, 0x1b000 <string_change+0x3a8>
		000000000001bf94:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1bf98: 39000109     	strb	w9, [x8]
		000000000001bf98:  R_AARCH64_LDST8_ABS_LO12_NC	report_ufp_uevent.area_meet_down
   1bf9c: b9400268     	ldr	w8, [x19]
		000000000001bf9c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1bfa0: 35000208     	cbnz	w8, 0x1bfe0 <report_ufp_uevent+0xc0>
   1bfa4: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001bfa4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1bfa8: f9400108     	ldr	x8, [x8]
		000000000001bfa8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1bfac: b5000908     	cbnz	x8, 0x1c0cc <report_ufp_uevent+0x1ac>
   1bfb0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bfb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a86
   1bfb4: 91000000     	add	x0, x0, #0x0
		000000000001bfb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a86
   1bfb8: 94000000     	bl	0x1bfb8 <report_ufp_uevent+0x98>
		000000000001bfb8:  R_AARCH64_CALL26	_printk
   1bfbc: 14000058     	b	0x1c11c <report_ufp_uevent+0x1fc>
   1bfc0: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001bfc0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1bfc4: 3900011f     	strb	wzr, [x8]
		000000000001bfc4:  R_AARCH64_LDST8_ABS_LO12_NC	report_ufp_uevent.area_meet_down
   1bfc8: f9400129     	ldr	x9, [x9]
		000000000001bfc8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1bfcc: b5000189     	cbnz	x9, 0x1bffc <report_ufp_uevent+0xdc>
   1bfd0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bfd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a86
   1bfd4: 91000000     	add	x0, x0, #0x0
		000000000001bfd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a86
   1bfd8: 94000000     	bl	0x1bfd8 <report_ufp_uevent+0xb8>
		000000000001bfd8:  R_AARCH64_CALL26	_printk
   1bfdc: 1400001d     	b	0x1c050 <report_ufp_uevent+0x130>
   1bfe0: 90000014     	adrp	x20, 0x1b000 <string_change+0x3a8>
		000000000001bfe0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1bfe4: f9400288     	ldr	x8, [x20]
		000000000001bfe4:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1bfe8: b5000a28     	cbnz	x8, 0x1c12c <report_ufp_uevent+0x20c>
   1bfec: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001bfec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a86
   1bff0: 91000000     	add	x0, x0, #0x0
		000000000001bff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a86
   1bff4: 94000000     	bl	0x1bff4 <report_ufp_uevent+0xd4>
		000000000001bff4:  R_AARCH64_CALL26	_printk
   1bff8: 14000065     	b	0x1c18c <report_ufp_uevent+0x26c>
   1bffc: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001bffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf1a
   1c000: 91000108     	add	x8, x8, #0x0
		000000000001c000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf1a
   1c004: f90003e8     	str	x8, [sp]
   1c008: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c008:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
   1c00c: b9400108     	ldr	w8, [x8]
		000000000001c00c:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1c010: 71000d1f     	cmp	w8, #0x3
   1c014: 54000c62     	b.hs	0x1c1a0 <report_ufp_uevent+0x280>
   1c018: 9000000a     	adrp	x10, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c018:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent_tppower_to_str
   1c01c: 9100014a     	add	x10, x10, #0x0
		000000000001c01c:  R_AARCH64_ADD_ABS_LO12_NC	report_ufp_uevent_tppower_to_str
   1c020: 91004120     	add	x0, x9, #0x10
   1c024: f8687948     	ldr	x8, [x10, x8, lsl #3]
   1c028: 910003e2     	mov	x2, sp
   1c02c: 52800041     	mov	w1, #0x2                // =2
   1c030: a900ffe8     	stp	x8, xzr, [sp, #0x8]
   1c034: 94000000     	bl	0x1c034 <report_ufp_uevent+0x114>
		000000000001c034:  R_AARCH64_CALL26	kobject_uevent_env
   1c038: f94007e2     	ldr	x2, [sp, #0x8]
   1c03c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c03c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6abe
   1c040: 91000000     	add	x0, x0, #0x0
		000000000001c040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6abe
   1c044: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf1a
   1c048: 91000021     	add	x1, x1, #0x0
		000000000001c048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf1a
   1c04c: 94000000     	bl	0x1c04c <report_ufp_uevent+0x12c>
		000000000001c04c:  R_AARCH64_CALL26	_printk
   1c050: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c050:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   1c054: b9445a69     	ldr	w9, [x19, #0x458]
   1c058: 39400108     	ldrb	w8, [x8]
		000000000001c058:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
   1c05c: 340002a9     	cbz	w9, 0x1c0b0 <report_ufp_uevent+0x190>
   1c060: 90000014     	adrp	x20, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c060:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
   1c064: 34000108     	cbz	w8, 0x1c084 <report_ufp_uevent+0x164>
   1c068: 39400288     	ldrb	w8, [x20]
		000000000001c068:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
   1c06c: 370000c8     	tbnz	w8, #0x0, 0x1c084 <report_ufp_uevent+0x164>
   1c070: 90000013     	adrp	x19, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c070:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
   1c074: 91000273     	add	x19, x19, #0x0
		000000000001c074:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
   1c078: aa1303e0     	mov	x0, x19
   1c07c: 94000000     	bl	0x1c07c <report_ufp_uevent+0x15c>
		000000000001c07c:  R_AARCH64_CALL26	complete
   1c080: 3900827f     	strb	wzr, [x19, #0x20]
   1c084: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c084:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
   1c088: 39400109     	ldrb	w9, [x8]
		000000000001c088:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
   1c08c: 7100053f     	cmp	w9, #0x1
   1c090: 54fff6c1     	b.ne	0x1bf68 <report_ufp_uevent+0x48>
   1c094: 39400289     	ldrb	w9, [x20]
		000000000001c094:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
   1c098: 3707f689     	tbnz	w9, #0x0, 0x1bf68 <report_ufp_uevent+0x48>
   1c09c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x630c
   1c0a0: 91000000     	add	x0, x0, #0x0
		000000000001c0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x630c
   1c0a4: 3900011f     	strb	wzr, [x8]
		000000000001c0a4:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
   1c0a8: 94000000     	bl	0x1c0a8 <report_ufp_uevent+0x188>
		000000000001c0a8:  R_AARCH64_CALL26	_printk
   1c0ac: 17ffffaf     	b	0x1bf68 <report_ufp_uevent+0x48>
   1c0b0: 34fff5c8     	cbz	w8, 0x1bf68 <report_ufp_uevent+0x48>
   1c0b4: 90000013     	adrp	x19, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c0b4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
   1c0b8: 91000273     	add	x19, x19, #0x0
		000000000001c0b8:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
   1c0bc: aa1303e0     	mov	x0, x19
   1c0c0: 94000000     	bl	0x1c0c0 <report_ufp_uevent+0x1a0>
		000000000001c0c0:  R_AARCH64_CALL26	complete
   1c0c4: 3900827f     	strb	wzr, [x19, #0x20]
   1c0c8: 17ffffa8     	b	0x1bf68 <report_ufp_uevent+0x48>
   1c0cc: 90000009     	adrp	x9, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c0cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc31c
   1c0d0: 91000129     	add	x9, x9, #0x0
		000000000001c0d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc31c
   1c0d4: f90003e9     	str	x9, [sp]
   1c0d8: b9400269     	ldr	w9, [x19]
		000000000001c0d8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1c0dc: 71000d3f     	cmp	w9, #0x3
   1c0e0: 54000602     	b.hs	0x1c1a0 <report_ufp_uevent+0x280>
   1c0e4: 9000000a     	adrp	x10, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c0e4:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent_tppower_to_str
   1c0e8: 9100014a     	add	x10, x10, #0x0
		000000000001c0e8:  R_AARCH64_ADD_ABS_LO12_NC	report_ufp_uevent_tppower_to_str
   1c0ec: 91004100     	add	x0, x8, #0x10
   1c0f0: f8697949     	ldr	x9, [x10, x9, lsl #3]
   1c0f4: 910003e2     	mov	x2, sp
   1c0f8: 52800041     	mov	w1, #0x2                // =2
   1c0fc: a900ffe9     	stp	x9, xzr, [sp, #0x8]
   1c100: 94000000     	bl	0x1c100 <report_ufp_uevent+0x1e0>
		000000000001c100:  R_AARCH64_CALL26	kobject_uevent_env
   1c104: f94007e2     	ldr	x2, [sp, #0x8]
   1c108: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c108:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6abe
   1c10c: 91000000     	add	x0, x0, #0x0
		000000000001c10c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6abe
   1c110: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c110:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc31c
   1c114: 91000021     	add	x1, x1, #0x0
		000000000001c114:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc31c
   1c118: 94000000     	bl	0x1c118 <report_ufp_uevent+0x1f8>
		000000000001c118:  R_AARCH64_CALL26	_printk
   1c11c: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c11c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
   1c120: 52800029     	mov	w9, #0x1                // =1
   1c124: 39000109     	strb	w9, [x8]
		000000000001c124:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
   1c128: 17ffff90     	b	0x1bf68 <report_ufp_uevent+0x48>
   1c12c: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c12c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   1c130: 91000000     	add	x0, x0, #0x0
		000000000001c130:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   1c134: 94000000     	bl	0x1c134 <report_ufp_uevent+0x214>
		000000000001c134:  R_AARCH64_CALL26	ufp_report_gesture_uevent
   1c138: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4052
   1c13c: 91000108     	add	x8, x8, #0x0
		000000000001c13c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4052
   1c140: f90003e8     	str	x8, [sp]
   1c144: b9400268     	ldr	w8, [x19]
		000000000001c144:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
   1c148: 71000d1f     	cmp	w8, #0x3
   1c14c: 540002a2     	b.hs	0x1c1a0 <report_ufp_uevent+0x280>
   1c150: 90000009     	adrp	x9, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c150:  R_AARCH64_ADR_PREL_PG_HI21	report_ufp_uevent_tppower_to_str
   1c154: 91000129     	add	x9, x9, #0x0
		000000000001c154:  R_AARCH64_ADD_ABS_LO12_NC	report_ufp_uevent_tppower_to_str
   1c158: 910003e2     	mov	x2, sp
   1c15c: f8687928     	ldr	x8, [x9, x8, lsl #3]
   1c160: f9400289     	ldr	x9, [x20]
		000000000001c160:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1c164: 52800041     	mov	w1, #0x2                // =2
   1c168: 91004120     	add	x0, x9, #0x10
   1c16c: a900ffe8     	stp	x8, xzr, [sp, #0x8]
   1c170: 94000000     	bl	0x1c170 <report_ufp_uevent+0x250>
		000000000001c170:  R_AARCH64_CALL26	kobject_uevent_env
   1c174: f94007e2     	ldr	x2, [sp, #0x8]
   1c178: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6abe
   1c17c: 91000000     	add	x0, x0, #0x0
		000000000001c17c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6abe
   1c180: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4052
   1c184: 91000021     	add	x1, x1, #0x0
		000000000001c184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4052
   1c188: 94000000     	bl	0x1c188 <report_ufp_uevent+0x268>
		000000000001c188:  R_AARCH64_CALL26	_printk
   1c18c: 90000008     	adrp	x8, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c18c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
   1c190: 52800029     	mov	w9, #0x1                // =1
   1c194: 39000109     	strb	w9, [x8]
		000000000001c194:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
   1c198: 17ffff74     	b	0x1bf68 <report_ufp_uevent+0x48>
   1c19c: 94000000     	bl	0x1c19c <report_ufp_uevent+0x27c>
		000000000001c19c:  R_AARCH64_CALL26	__stack_chk_fail
   1c1a0: d42aa240     	brk	#0x5512
