
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001fb8 <report_ufp_uevent>:
    1fb8: d503233f     	paciasp
    1fbc: d10143ff     	sub	sp, sp, #0x50
    1fc0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1fc4: f9001bf5     	str	x21, [sp, #0x30]
    1fc8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1fcc: 910083fd     	add	x29, sp, #0x20
    1fd0: d5384108     	mrs	x8, SP_EL0
    1fd4: f9438908     	ldr	x8, [x8, #0x710]
    1fd8: f81f83a8     	stur	x8, [x29, #-0x8]
    1fdc: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001fdc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x141b
    1fe0: 39400109     	ldrb	w9, [x8]
		0000000000001fe0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x141b
    1fe4: 340001c0     	cbz	w0, 0x201c <report_ufp_uevent+0x64>
    1fe8: 370001c9     	tbnz	w9, #0x0, 0x2020 <report_ufp_uevent+0x68>
    1fec: 90000013     	adrp	x19, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001fec:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    1ff0: 90000015     	adrp	x21, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001ff0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    1ff4: 5280002b     	mov	w11, #0x1               // =1
    1ff8: b940026a     	ldr	w10, [x19]
		0000000000001ff8:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    1ffc: f94002a9     	ldr	x9, [x21]
		0000000000001ffc:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    2000: 3900010b     	strb	w11, [x8]
		0000000000002000:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x141b
    2004: 3500034a     	cbnz	w10, 0x206c <report_ufp_uevent+0xb4>
    2008: b5000989     	cbnz	x9, 0x2138 <report_ufp_uevent+0x180>
    200c: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		000000000000200c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca0
    2010: 91000000     	add	x0, x0, #0x0
		0000000000002010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca0
    2014: 94000000     	bl	0x2014 <report_ufp_uevent+0x5c>
		0000000000002014:  R_AARCH64_CALL26	_printk
    2018: 14000057     	b	0x2174 <report_ufp_uevent+0x1bc>
    201c: 35000189     	cbnz	w9, 0x204c <report_ufp_uevent+0x94>
    2020: d5384108     	mrs	x8, SP_EL0
    2024: f9438908     	ldr	x8, [x8, #0x710]
    2028: f85f83a9     	ldur	x9, [x29, #-0x8]
    202c: eb09011f     	cmp	x8, x9
    2030: 54000ee1     	b.ne	0x220c <report_ufp_uevent+0x254>
    2034: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    2038: f9401bf5     	ldr	x21, [sp, #0x30]
    203c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    2040: 910143ff     	add	sp, sp, #0x50
    2044: d50323bf     	autiasp
    2048: d65f03c0     	ret
    204c: 90000009     	adrp	x9, 0x2000 <report_ufp_uevent+0x48>
		000000000000204c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    2050: 3900011f     	strb	wzr, [x8]
		0000000000002050:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x141b
    2054: f9400129     	ldr	x9, [x9]
		0000000000002054:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    2058: b5000149     	cbnz	x9, 0x2080 <report_ufp_uevent+0xc8>
    205c: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		000000000000205c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca0
    2060: 91000000     	add	x0, x0, #0x0
		0000000000002060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca0
    2064: 94000000     	bl	0x2064 <report_ufp_uevent+0xac>
		0000000000002064:  R_AARCH64_CALL26	_printk
    2068: 1400001a     	b	0x20d0 <report_ufp_uevent+0x118>
    206c: b50008c9     	cbnz	x9, 0x2184 <report_ufp_uevent+0x1cc>
    2070: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		0000000000002070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ca0
    2074: 91000000     	add	x0, x0, #0x0
		0000000000002074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ca0
    2078: 94000000     	bl	0x2078 <report_ufp_uevent+0xc0>
		0000000000002078:  R_AARCH64_CALL26	_printk
    207c: 14000059     	b	0x21e0 <report_ufp_uevent+0x228>
    2080: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x48>
		0000000000002080:  R_AARCH64_ADR_PREL_PG_HI21	current_lcd_state
    2084: b9400108     	ldr	w8, [x8]
		0000000000002084:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    2088: 7100091f     	cmp	w8, #0x2
    208c: 54000c28     	b.hi	0x2210 <report_ufp_uevent+0x258>
    2090: 9000000a     	adrp	x10, 0x2000 <report_ufp_uevent+0x48>
		0000000000002090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x44b8
    2094: 9100014a     	add	x10, x10, #0x0
		0000000000002094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x44b8
    2098: 90000014     	adrp	x20, 0x2000 <report_ufp_uevent+0x48>
		0000000000002098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x63b0
    209c: 91000294     	add	x20, x20, #0x0
		000000000000209c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x63b0
    20a0: f8687953     	ldr	x19, [x10, x8, lsl #3]
    20a4: 91004120     	add	x0, x9, #0x10
    20a8: 910003e2     	mov	x2, sp
    20ac: 52800041     	mov	w1, #0x2                // =2
    20b0: f9000bff     	str	xzr, [sp, #0x10]
    20b4: a9004ff4     	stp	x20, x19, [sp]
    20b8: 94000000     	bl	0x20b8 <report_ufp_uevent+0x100>
		00000000000020b8:  R_AARCH64_CALL26	kobject_uevent_env
    20bc: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		00000000000020bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc6
    20c0: 91000000     	add	x0, x0, #0x0
		00000000000020c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc6
    20c4: aa1403e1     	mov	x1, x20
    20c8: aa1303e2     	mov	x2, x19
    20cc: 94000000     	bl	0x20cc <report_ufp_uevent+0x114>
		00000000000020cc:  R_AARCH64_CALL26	_printk
    20d0: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x48>
		00000000000020d0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    20d4: f9400108     	ldr	x8, [x8]
		00000000000020d4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    20d8: b9445909     	ldr	w9, [x8, #0x458]
    20dc: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x48>
		00000000000020dc:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    20e0: 39400108     	ldrb	w8, [x8]
		00000000000020e0:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    20e4: 34000869     	cbz	w9, 0x21f0 <report_ufp_uevent+0x238>
    20e8: 90000014     	adrp	x20, 0x2000 <report_ufp_uevent+0x48>
		00000000000020e8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa2
    20ec: 34000108     	cbz	w8, 0x210c <report_ufp_uevent+0x154>
    20f0: 39400288     	ldrb	w8, [x20]
		00000000000020f0:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    20f4: 370000c8     	tbnz	w8, #0x0, 0x210c <report_ufp_uevent+0x154>
    20f8: 90000013     	adrp	x19, 0x2000 <report_ufp_uevent+0x48>
		00000000000020f8:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    20fc: 91000273     	add	x19, x19, #0x0
		00000000000020fc:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    2100: aa1303e0     	mov	x0, x19
    2104: 94000000     	bl	0x2104 <report_ufp_uevent+0x14c>
		0000000000002104:  R_AARCH64_CALL26	complete
    2108: 3900827f     	strb	wzr, [x19, #0x20]
    210c: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x48>
		000000000000210c:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
    2110: 39400109     	ldrb	w9, [x8]
		0000000000002110:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    2114: 7100053f     	cmp	w9, #0x1
    2118: 54fff841     	b.ne	0x2020 <report_ufp_uevent+0x68>
    211c: 39400289     	ldrb	w9, [x20]
		000000000000211c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa2
    2120: 3707f809     	tbnz	w9, #0x0, 0x2020 <report_ufp_uevent+0x68>
    2124: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		0000000000002124:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38b4
    2128: 91000000     	add	x0, x0, #0x0
		0000000000002128:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38b4
    212c: 3900011f     	strb	wzr, [x8]
		000000000000212c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    2130: 94000000     	bl	0x2130 <report_ufp_uevent+0x178>
		0000000000002130:  R_AARCH64_CALL26	_printk
    2134: 17ffffbb     	b	0x2020 <report_ufp_uevent+0x68>
    2138: 90000013     	adrp	x19, 0x2000 <report_ufp_uevent+0x48>
		0000000000002138:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f74
    213c: 91000273     	add	x19, x19, #0x0
		000000000000213c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f74
    2140: 90000014     	adrp	x20, 0x2000 <report_ufp_uevent+0x48>
		0000000000002140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x724
    2144: 91000294     	add	x20, x20, #0x0
		0000000000002144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x724
    2148: 91004120     	add	x0, x9, #0x10
    214c: 910003e2     	mov	x2, sp
    2150: 52800041     	mov	w1, #0x2                // =2
    2154: a90053f3     	stp	x19, x20, [sp]
    2158: f9000bff     	str	xzr, [sp, #0x10]
    215c: 94000000     	bl	0x215c <report_ufp_uevent+0x1a4>
		000000000000215c:  R_AARCH64_CALL26	kobject_uevent_env
    2160: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		0000000000002160:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc6
    2164: 91000000     	add	x0, x0, #0x0
		0000000000002164:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc6
    2168: aa1303e1     	mov	x1, x19
    216c: aa1403e2     	mov	x2, x20
    2170: 94000000     	bl	0x2170 <report_ufp_uevent+0x1b8>
		0000000000002170:  R_AARCH64_CALL26	_printk
    2174: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x48>
		0000000000002174:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa1
    2178: 52800029     	mov	w9, #0x1                // =1
    217c: 39000109     	strb	w9, [x8]
		000000000000217c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa1
    2180: 17ffffa8     	b	0x2020 <report_ufp_uevent+0x68>
    2184: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		0000000000002184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2683
    2188: 91000000     	add	x0, x0, #0x0
		0000000000002188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2683
    218c: 94000000     	bl	0x218c <report_ufp_uevent+0x1d4>
		000000000000218c:  R_AARCH64_CALL26	ufp_report_gesture_uevent
    2190: b9400268     	ldr	w8, [x19]
		0000000000002190:  R_AARCH64_LDST32_ABS_LO12_NC	current_lcd_state
    2194: 7100091f     	cmp	w8, #0x2
    2198: 540003c8     	b.hi	0x2210 <report_ufp_uevent+0x258>
    219c: 90000009     	adrp	x9, 0x2000 <report_ufp_uevent+0x48>
		000000000000219c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x44b8
    21a0: 91000129     	add	x9, x9, #0x0
		00000000000021a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x44b8
    21a4: 90000014     	adrp	x20, 0x2000 <report_ufp_uevent+0x48>
		00000000000021a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2693
    21a8: 91000294     	add	x20, x20, #0x0
		00000000000021a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2693
    21ac: f8687933     	ldr	x19, [x9, x8, lsl #3]
    21b0: f94002a8     	ldr	x8, [x21]
		00000000000021b0:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    21b4: 910003e2     	mov	x2, sp
    21b8: 52800041     	mov	w1, #0x2                // =2
    21bc: f9000bff     	str	xzr, [sp, #0x10]
    21c0: 91004100     	add	x0, x8, #0x10
    21c4: a9004ff4     	stp	x20, x19, [sp]
    21c8: 94000000     	bl	0x21c8 <report_ufp_uevent+0x210>
		00000000000021c8:  R_AARCH64_CALL26	kobject_uevent_env
    21cc: 90000000     	adrp	x0, 0x2000 <report_ufp_uevent+0x48>
		00000000000021cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cc6
    21d0: 91000000     	add	x0, x0, #0x0
		00000000000021d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cc6
    21d4: aa1403e1     	mov	x1, x20
    21d8: aa1303e2     	mov	x2, x19
    21dc: 94000000     	bl	0x21dc <report_ufp_uevent+0x224>
		00000000000021dc:  R_AARCH64_CALL26	_printk
    21e0: 90000008     	adrp	x8, 0x2000 <report_ufp_uevent+0x48>
		00000000000021e0:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    21e4: 52800029     	mov	w9, #0x1                // =1
    21e8: 39000109     	strb	w9, [x8]
		00000000000021e8:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    21ec: 17ffff8d     	b	0x2020 <report_ufp_uevent+0x68>
    21f0: 34fff188     	cbz	w8, 0x2020 <report_ufp_uevent+0x68>
    21f4: 90000013     	adrp	x19, 0x2000 <report_ufp_uevent+0x48>
		00000000000021f4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    21f8: 91000273     	add	x19, x19, #0x0
		00000000000021f8:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    21fc: aa1303e0     	mov	x0, x19
    2200: 94000000     	bl	0x2200 <report_ufp_uevent+0x248>
		0000000000002200:  R_AARCH64_CALL26	complete
    2204: 3900827f     	strb	wzr, [x19, #0x20]
    2208: 17ffff86     	b	0x2020 <report_ufp_uevent+0x68>
    220c: 94000000     	bl	0x220c <report_ufp_uevent+0x254>
		000000000000220c:  R_AARCH64_CALL26	__stack_chk_fail
    2210: d42aa240     	brk	#0x5512
