
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f7c <ram_work_routine>:
    1f7c: d503233f     	paciasp
    1f80: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1f84: 910003fd     	mov	x29, sp
    1f88: d10eec09     	sub	x9, x0, #0x3bb
    1f8c: 90000008     	adrp	x8, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001f8c:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
    1f90: f8560003     	ldur	x3, [x0, #-0xa0]
    1f94: 7900013f     	strh	wzr, [x9]
    1f98: d10f0005     	sub	x5, x0, #0x3c0
    1f9c: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001f9c:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    1fa0: 91000000     	add	x0, x0, #0x0
		0000000000001fa0:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    1fa4: f9400102     	ldr	x2, [x8]
		0000000000001fa4:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
    1fa8: 90000006     	adrp	x6, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001fa8:  R_AARCH64_ADR_PREL_PG_HI21	ram_load
    1fac: 910000c6     	add	x6, x6, #0x0
		0000000000001fac:  R_AARCH64_ADD_ABS_LO12_NC	ram_load
    1fb0: 52800021     	mov	w1, #0x1                // =1
    1fb4: 52819804     	mov	w4, #0xcc0              // =3264
    1fb8: 94000000     	bl	0x1fb8 <ram_work_routine+0x3c>
		0000000000001fb8:  R_AARCH64_CALL26	request_firmware_nowait
    1fbc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1fc0: d50323bf     	autiasp
    1fc4: d65f03c0     	ret
