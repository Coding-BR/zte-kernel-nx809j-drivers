
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001280 <get_tp_noise_store>:
    1280: d503233f     	paciasp
    1284: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1288: a9014ff4     	stp	x20, x19, [sp, #0x10]
    128c: 910003fd     	mov	x29, sp
    1290: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xe4>
		0000000000001290:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1294: aa0203f3     	mov	x19, x2
    1298: f9400114     	ldr	x20, [x8]
		0000000000001298:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    129c: 91318280     	add	x0, x20, #0xc60
    12a0: 94000000     	bl	0x12a0 <get_tp_noise_store+0x20>
		00000000000012a0:  R_AARCH64_CALL26	mutex_lock
    12a4: f9462e80     	ldr	x0, [x20, #0xc58]
    12a8: b4000140     	cbz	x0, 0x12d0 <get_tp_noise_store+0x50>
    12ac: f9400408     	ldr	x8, [x0, #0x8]
    12b0: b40000c8     	cbz	x8, 0x12c8 <get_tp_noise_store+0x48>
    12b4: aa0803e0     	mov	x0, x8
    12b8: 94000000     	bl	0x12b8 <get_tp_noise_store+0x38>
		00000000000012b8:  R_AARCH64_CALL26	vfree
    12bc: f9462e88     	ldr	x8, [x20, #0xc58]
    12c0: f900051f     	str	xzr, [x8, #0x8]
    12c4: f9462e80     	ldr	x0, [x20, #0xc58]
    12c8: 94000000     	bl	0x12c8 <get_tp_noise_store+0x48>
		00000000000012c8:  R_AARCH64_CALL26	kfree
    12cc: f9062e9f     	str	xzr, [x20, #0xc58]
    12d0: 91318280     	add	x0, x20, #0xc60
    12d4: b9044a9f     	str	wzr, [x20, #0x448]
    12d8: 94000000     	bl	0x12d8 <get_tp_noise_store+0x58>
		00000000000012d8:  R_AARCH64_CALL26	mutex_unlock
    12dc: aa1303e0     	mov	x0, x19
    12e0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    12e4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    12e8: d50323bf     	autiasp
    12ec: d65f03c0     	ret
