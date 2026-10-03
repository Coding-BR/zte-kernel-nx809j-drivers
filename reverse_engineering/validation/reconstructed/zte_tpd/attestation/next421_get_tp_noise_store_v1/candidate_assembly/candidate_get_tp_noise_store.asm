
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001224 <get_tp_noise_store>:
    1224: d503233f     	paciasp
    1228: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    122c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    1230: 910003fd     	mov	x29, sp
    1234: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xec>
		0000000000001234:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1238: aa0203f3     	mov	x19, x2
    123c: f9400114     	ldr	x20, [x8]
		000000000000123c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1240: 91318280     	add	x0, x20, #0xc60
    1244: 94000000     	bl	0x1244 <get_tp_noise_store+0x20>
		0000000000001244:  R_AARCH64_CALL26	mutex_lock
    1248: f9462e80     	ldr	x0, [x20, #0xc58]
    124c: b4000140     	cbz	x0, 0x1274 <get_tp_noise_store+0x50>
    1250: f9400408     	ldr	x8, [x0, #0x8]
    1254: b40000c8     	cbz	x8, 0x126c <get_tp_noise_store+0x48>
    1258: aa0803e0     	mov	x0, x8
    125c: 94000000     	bl	0x125c <get_tp_noise_store+0x38>
		000000000000125c:  R_AARCH64_CALL26	vfree
    1260: f9462e88     	ldr	x8, [x20, #0xc58]
    1264: f900051f     	str	xzr, [x8, #0x8]
    1268: f9462e80     	ldr	x0, [x20, #0xc58]
    126c: 94000000     	bl	0x126c <get_tp_noise_store+0x48>
		000000000000126c:  R_AARCH64_CALL26	kfree
    1270: f9062e9f     	str	xzr, [x20, #0xc58]
    1274: 91318280     	add	x0, x20, #0xc60
    1278: b9044a9f     	str	wzr, [x20, #0x448]
    127c: 94000000     	bl	0x127c <get_tp_noise_store+0x58>
		000000000000127c:  R_AARCH64_CALL26	mutex_unlock
    1280: aa1303e0     	mov	x0, x19
    1284: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1288: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    128c: d50323bf     	autiasp
    1290: d65f03c0     	ret
