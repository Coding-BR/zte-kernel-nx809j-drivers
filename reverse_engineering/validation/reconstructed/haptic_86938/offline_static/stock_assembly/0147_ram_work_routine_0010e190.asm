
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b370 <ram_work_routine>:
    b370: d503233f     	paciasp
    b374: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b378: 910003fd     	mov	x29, sp
    b37c: d10eec09     	sub	x9, x0, #0x3bb
    b380: 90000008     	adrp	x8, 0xb000 <audio_work_routine+0xd0>
		000000000000b380:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
    b384: f8560003     	ldur	x3, [x0, #-0xa0]
    b388: 7900013f     	strh	wzr, [x9]
    b38c: d10f0005     	sub	x5, x0, #0x3c0
    b390: 90000000     	adrp	x0, 0xb000 <audio_work_routine+0xd0>
		000000000000b390:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
    b394: 91000000     	add	x0, x0, #0x0
		000000000000b394:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
    b398: f9400102     	ldr	x2, [x8]
		000000000000b398:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
    b39c: 90000006     	adrp	x6, 0xb000 <audio_work_routine+0xd0>
		000000000000b39c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x84c0
    b3a0: 910000c6     	add	x6, x6, #0x0
		000000000000b3a0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x84c0
    b3a4: 52800021     	mov	w1, #0x1                // =1
    b3a8: 52819804     	mov	w4, #0xcc0              // =3264
    b3ac: 94000000     	bl	0xb3ac <ram_work_routine+0x3c>
		000000000000b3ac:  R_AARCH64_CALL26	request_firmware_nowait
    b3b0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b3b4: d50323bf     	autiasp
    b3b8: d65f03c0     	ret
