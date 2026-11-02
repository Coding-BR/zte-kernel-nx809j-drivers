
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000105c <aw22xxx_i2c_write>:
    105c: d503233f     	paciasp
    1060: d10103ff     	sub	sp, sp, #0x40
    1064: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1068: f90013f5     	str	x21, [sp, #0x20]
    106c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1070: 910043fd     	add	x29, sp, #0x10
    1074: d5384108     	mrs	x8, SP_EL0
    1078: aa0003f3     	mov	x19, x0
    107c: 2a1f03e3     	mov	w3, wzr
    1080: f9438908     	ldr	x8, [x8, #0x710]
    1084: f90007e8     	str	x8, [sp, #0x8]
    1088: f9400000     	ldr	x0, [x0]
    108c: 390013e1     	strb	w1, [sp, #0x4]
    1090: 910013e1     	add	x1, sp, #0x4
    1094: 390017e2     	strb	w2, [sp, #0x5]
    1098: 52800042     	mov	w2, #0x2                // =2
    109c: 94000000     	bl	0x109c <aw22xxx_i2c_write+0x40>
		000000000000109c:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    10a0: 37f80180     	tbnz	w0, #0x1f, 0x10d0 <aw22xxx_i2c_write+0x74>
    10a4: d5384108     	mrs	x8, SP_EL0
    10a8: f9438908     	ldr	x8, [x8, #0x710]
    10ac: f94007e9     	ldr	x9, [sp, #0x8]
    10b0: eb09011f     	cmp	x8, x9
    10b4: 540006a1     	b.ne	0x1188 <aw22xxx_i2c_write+0x12c>
    10b8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    10bc: f94013f5     	ldr	x21, [sp, #0x20]
    10c0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    10c4: 910103ff     	add	sp, sp, #0x40
    10c8: d50323bf     	autiasp
    10cc: d65f03c0     	ret
    10d0: b942e268     	ldr	w8, [x19, #0x2e0]
    10d4: 2a0003f4     	mov	w20, w0
    10d8: 2a0803e0     	mov	w0, w8
    10dc: 94000000     	bl	0x10dc <aw22xxx_i2c_write+0x80>
		00000000000010dc:  R_AARCH64_CALL26	gpio_to_desc
    10e0: 94000000     	bl	0x10e0 <aw22xxx_i2c_write+0x84>
		00000000000010e0:  R_AARCH64_CALL26	gpiod_get_raw_value
    10e4: 2a0003e4     	mov	w4, w0
    10e8: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000010e8:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x283
    10ec: 91000000     	add	x0, x0, #0x0
		00000000000010ec:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x283
    10f0: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		00000000000010f0:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xba9
    10f4: 91000021     	add	x1, x1, #0x0
		00000000000010f4:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xba9
    10f8: 2a1f03e2     	mov	w2, wzr
    10fc: 2a1403e3     	mov	w3, w20
    1100: 94000000     	bl	0x1100 <aw22xxx_i2c_write+0xa4>
		0000000000001100:  R_AARCH64_CALL26	_printk
    1104: 52800020     	mov	w0, #0x1                // =1
    1108: 94000000     	bl	0x1108 <aw22xxx_i2c_write+0xac>
		0000000000001108:  R_AARCH64_CALL26	msleep
    110c: f9400260     	ldr	x0, [x19]
    1110: 910013e1     	add	x1, sp, #0x4
    1114: 52800042     	mov	w2, #0x2                // =2
    1118: 2a1f03e3     	mov	w3, wzr
    111c: 94000000     	bl	0x111c <aw22xxx_i2c_write+0xc0>
		000000000000111c:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    1120: 36fffc20     	tbz	w0, #0x1f, 0x10a4 <aw22xxx_i2c_write+0x48>
    1124: b942e268     	ldr	w8, [x19, #0x2e0]
    1128: 2a0003f4     	mov	w20, w0
    112c: 2a0803e0     	mov	w0, w8
    1130: 94000000     	bl	0x1130 <aw22xxx_i2c_write+0xd4>
		0000000000001130:  R_AARCH64_CALL26	gpio_to_desc
    1134: 94000000     	bl	0x1134 <aw22xxx_i2c_write+0xd8>
		0000000000001134:  R_AARCH64_CALL26	gpiod_get_raw_value
    1138: 90000015     	adrp	x21, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001138:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xba9
    113c: 910002b5     	add	x21, x21, #0x0
		000000000000113c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xba9
    1140: 2a0003e4     	mov	w4, w0
    1144: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001144:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x283
    1148: 91000000     	add	x0, x0, #0x0
		0000000000001148:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x283
    114c: aa1503e1     	mov	x1, x21
    1150: 52800022     	mov	w2, #0x1                // =1
    1154: 2a1403e3     	mov	w3, w20
    1158: 94000000     	bl	0x1158 <aw22xxx_i2c_write+0xfc>
		0000000000001158:  R_AARCH64_CALL26	_printk
    115c: b942e260     	ldr	w0, [x19, #0x2e0]
    1160: 94000000     	bl	0x1160 <aw22xxx_i2c_write+0x104>
		0000000000001160:  R_AARCH64_CALL26	gpio_to_desc
    1164: 52800021     	mov	w1, #0x1                // =1
    1168: 94000000     	bl	0x1168 <aw22xxx_i2c_write+0x10c>
		0000000000001168:  R_AARCH64_CALL26	gpiod_direction_output_raw
    116c: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		000000000000116c:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x1ab
    1170: 91000000     	add	x0, x0, #0x0
		0000000000001170:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x1ab
    1174: aa1503e1     	mov	x1, x21
    1178: 94000000     	bl	0x1178 <aw22xxx_i2c_write+0x11c>
		0000000000001178:  R_AARCH64_CALL26	_printk
    117c: 52800020     	mov	w0, #0x1                // =1
    1180: 94000000     	bl	0x1180 <aw22xxx_i2c_write+0x124>
		0000000000001180:  R_AARCH64_CALL26	msleep
    1184: 17ffffc8     	b	0x10a4 <aw22xxx_i2c_write+0x48>
    1188: 94000000     	bl	0x1188 <aw22xxx_i2c_write+0x12c>
		0000000000001188:  R_AARCH64_CALL26	__stack_chk_fail
