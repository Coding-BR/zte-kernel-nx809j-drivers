
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001fe0 <aw22xxx_irq>:
    1fe0: d503233f     	paciasp
    1fe4: d100c3ff     	sub	sp, sp, #0x30
    1fe8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1fec: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1ff0: 910043fd     	add	x29, sp, #0x10
    1ff4: d5384108     	mrs	x8, SP_EL0
    1ff8: 90000014     	adrp	x20, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001ff8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1338
    1ffc: 91000294     	add	x20, x20, #0x0
		0000000000001ffc:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1338
    2000: f9438908     	ldr	x8, [x8, #0x710]
    2004: aa0103f3     	mov	x19, x1
    2008: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002008:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    200c: 91000000     	add	x0, x0, #0x0
		000000000000200c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    2010: aa1403e1     	mov	x1, x20
    2014: f90007e8     	str	x8, [sp, #0x8]
    2018: 390013ff     	strb	wzr, [sp, #0x4]
    201c: 94000000     	bl	0x201c <aw22xxx_irq+0x3c>
		000000000000201c:  R_AARCH64_CALL26	_printk
    2020: 910013e2     	add	x2, sp, #0x4
    2024: aa1303e0     	mov	x0, x19
    2028: 52800141     	mov	w1, #0xa                // =10
    202c: 97fffc58     	bl	0x118c <aw22xxx_i2c_read>
    2030: 394013e2     	ldrb	w2, [sp, #0x4]
    2034: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002034:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x387
    2038: 91000000     	add	x0, x0, #0x0
		0000000000002038:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x387
    203c: aa1403e1     	mov	x1, x20
    2040: 94000000     	bl	0x2040 <aw22xxx_irq+0x60>
		0000000000002040:  R_AARCH64_CALL26	_printk
    2044: 394013e8     	ldrb	w8, [sp, #0x4]
    2048: 362002c8     	tbz	w8, #0x4, 0x20a0 <aw22xxx_irq+0xc0>
    204c: 90000008     	adrp	x8, 0x2000 <aw22xxx_irq+0x20>
		000000000000204c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    2050: 91094262     	add	x2, x19, #0x250
    2054: 52800400     	mov	w0, #0x20               // =32
    2058: f9400101     	ldr	x1, [x8]
		0000000000002058:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    205c: 94000000     	bl	0x205c <aw22xxx_irq+0x7c>
		000000000000205c:  R_AARCH64_CALL26	queue_work_on
    2060: b942fa63     	ldr	w3, [x19, #0x2f8]
    2064: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		0000000000002064:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x4c8
    2068: 91000000     	add	x0, x0, #0x0
		0000000000002068:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x4c8
    206c: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		000000000000206c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1338
    2070: 91000021     	add	x1, x1, #0x0
		0000000000002070:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1338
    2074: 5280c4a2     	mov	w2, #0x625              // =1573
    2078: 94000000     	bl	0x2078 <aw22xxx_irq+0x98>
		0000000000002078:  R_AARCH64_CALL26	_printk
    207c: f941aa60     	ldr	x0, [x19, #0x350]
    2080: b942fa62     	ldr	w2, [x19, #0x2f8]
    2084: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		0000000000002084:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x11e3
    2088: 91000021     	add	x1, x1, #0x0
		0000000000002088:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x11e3
    208c: 94000000     	bl	0x208c <aw22xxx_irq+0xac>
		000000000000208c:  R_AARCH64_CALL26	zlog_client_record
    2090: f941aa60     	ldr	x0, [x19, #0x350]
    2094: 52804b21     	mov	w1, #0x259              // =601
    2098: 72a00801     	movk	w1, #0x40, lsl #16
    209c: 94000000     	bl	0x209c <aw22xxx_irq+0xbc>
		000000000000209c:  R_AARCH64_CALL26	zlog_client_notify
    20a0: 90000000     	adrp	x0, 0x2000 <aw22xxx_irq+0x20>
		00000000000020a0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1423
    20a4: 91000000     	add	x0, x0, #0x0
		00000000000020a4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1423
    20a8: 90000001     	adrp	x1, 0x2000 <aw22xxx_irq+0x20>
		00000000000020a8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1338
    20ac: 91000021     	add	x1, x1, #0x0
		00000000000020ac:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1338
    20b0: 94000000     	bl	0x20b0 <aw22xxx_irq+0xd0>
		00000000000020b0:  R_AARCH64_CALL26	_printk
    20b4: d5384108     	mrs	x8, SP_EL0
    20b8: f9438908     	ldr	x8, [x8, #0x710]
    20bc: f94007e9     	ldr	x9, [sp, #0x8]
    20c0: eb09011f     	cmp	x8, x9
    20c4: 540000e1     	b.ne	0x20e0 <aw22xxx_irq+0x100>
    20c8: 52800020     	mov	w0, #0x1                // =1
    20cc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    20d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    20d4: 9100c3ff     	add	sp, sp, #0x30
    20d8: d50323bf     	autiasp
    20dc: d65f03c0     	ret
    20e0: 94000000     	bl	0x20e0 <aw22xxx_irq+0x100>
		00000000000020e0:  R_AARCH64_CALL26	__stack_chk_fail
