
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000118c <aw22xxx_i2c_read>:
    118c: d503233f     	paciasp
    1190: d100c3ff     	sub	sp, sp, #0x30
    1194: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1198: a9024ff4     	stp	x20, x19, [sp, #0x20]
    119c: 910043fd     	add	x29, sp, #0x10
    11a0: d5384108     	mrs	x8, SP_EL0
    11a4: aa0003f4     	mov	x20, x0
    11a8: aa0203f3     	mov	x19, x2
    11ac: f9438908     	ldr	x8, [x8, #0x710]
    11b0: 52800022     	mov	w2, #0x1                // =1
    11b4: 2a1f03e3     	mov	w3, wzr
    11b8: f90007e8     	str	x8, [sp, #0x8]
    11bc: f9400000     	ldr	x0, [x0]
    11c0: 390013e1     	strb	w1, [sp, #0x4]
    11c4: 910013e1     	add	x1, sp, #0x4
    11c8: 94000000     	bl	0x11c8 <aw22xxx_i2c_read+0x3c>
		00000000000011c8:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    11cc: 37f80220     	tbnz	w0, #0x1f, 0x1210 <aw22xxx_i2c_read+0x84>
    11d0: f9400280     	ldr	x0, [x20]
    11d4: aa1303e1     	mov	x1, x19
    11d8: 52800022     	mov	w2, #0x1                // =1
    11dc: 52800023     	mov	w3, #0x1                // =1
    11e0: 94000000     	bl	0x11e0 <aw22xxx_i2c_read+0x54>
		00000000000011e0:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    11e4: 37f80220     	tbnz	w0, #0x1f, 0x1228 <aw22xxx_i2c_read+0x9c>
    11e8: d5384108     	mrs	x8, SP_EL0
    11ec: f9438908     	ldr	x8, [x8, #0x710]
    11f0: f94007e9     	ldr	x9, [sp, #0x8]
    11f4: eb09011f     	cmp	x8, x9
    11f8: 54000641     	b.ne	0x12c0 <aw22xxx_i2c_read+0x134>
    11fc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1200: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1204: 9100c3ff     	add	sp, sp, #0x30
    1208: d50323bf     	autiasp
    120c: d65f03c0     	ret
    1210: 2a0003e2     	mov	w2, w0
    1214: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001214:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1168
    1218: 91000000     	add	x0, x0, #0x0
		0000000000001218:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1168
    121c: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000121c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x56c
    1220: 91000021     	add	x1, x1, #0x0
		0000000000001220:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x56c
    1224: 14000008     	b	0x1244 <aw22xxx_i2c_read+0xb8>
    1228: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001228:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x717
    122c: 91000108     	add	x8, x8, #0x0
		000000000000122c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x717
    1230: 39000260     	strb	w0, [x19]
    1234: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x56c
    1238: 91000021     	add	x1, x1, #0x0
		0000000000001238:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x56c
    123c: 2a0003e2     	mov	w2, w0
    1240: aa0803e0     	mov	x0, x8
    1244: 94000000     	bl	0x1244 <aw22xxx_i2c_read+0xb8>
		0000000000001244:  R_AARCH64_CALL26	_printk
    1248: 52800020     	mov	w0, #0x1                // =1
    124c: 94000000     	bl	0x124c <aw22xxx_i2c_read+0xc0>
		000000000000124c:  R_AARCH64_CALL26	msleep
    1250: f9400280     	ldr	x0, [x20]
    1254: 910013e1     	add	x1, sp, #0x4
    1258: 52800022     	mov	w2, #0x1                // =1
    125c: 2a1f03e3     	mov	w3, wzr
    1260: 94000000     	bl	0x1260 <aw22xxx_i2c_read+0xd4>
		0000000000001260:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    1264: 37f80160     	tbnz	w0, #0x1f, 0x1290 <aw22xxx_i2c_read+0x104>
    1268: f9400280     	ldr	x0, [x20]
    126c: aa1303e1     	mov	x1, x19
    1270: 52800022     	mov	w2, #0x1                // =1
    1274: 52800023     	mov	w3, #0x1                // =1
    1278: 94000000     	bl	0x1278 <aw22xxx_i2c_read+0xec>
		0000000000001278:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    127c: 36fffb60     	tbz	w0, #0x1f, 0x11e8 <aw22xxx_i2c_read+0x5c>
    1280: 39000260     	strb	w0, [x19]
    1284: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001284:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x717
    1288: 91000108     	add	x8, x8, #0x0
		0000000000001288:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x717
    128c: 14000003     	b	0x1298 <aw22xxx_i2c_read+0x10c>
    1290: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001290:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1168
    1294: 91000108     	add	x8, x8, #0x0
		0000000000001294:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1168
    1298: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001298:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x56c
    129c: 91000021     	add	x1, x1, #0x0
		000000000000129c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x56c
    12a0: 2a0003e2     	mov	w2, w0
    12a4: aa0803e0     	mov	x0, x8
    12a8: 2a0203f3     	mov	w19, w2
    12ac: 94000000     	bl	0x12ac <aw22xxx_i2c_read+0x120>
		00000000000012ac:  R_AARCH64_CALL26	_printk
    12b0: 52800020     	mov	w0, #0x1                // =1
    12b4: 94000000     	bl	0x12b4 <aw22xxx_i2c_read+0x128>
		00000000000012b4:  R_AARCH64_CALL26	msleep
    12b8: 2a1303e0     	mov	w0, w19
    12bc: 17ffffcb     	b	0x11e8 <aw22xxx_i2c_read+0x5c>
    12c0: 94000000     	bl	0x12c0 <aw22xxx_i2c_read+0x134>
		00000000000012c0:  R_AARCH64_CALL26	__stack_chk_fail
