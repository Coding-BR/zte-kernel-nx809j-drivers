
/input/haptic_86938_fn_082_ram_work_routine.o:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000004 <ram_work_routine>:
       4: d503233f     	paciasp
       8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
       c: 910003fd     	mov	x29, sp
      10: d10eec09     	sub	x9, x0, #0x3bb
      14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000014:  R_AARCH64_ADR_PREL_PG_HI21	aw_ram_name
      18: f8560003     	ldur	x3, [x0, #-0xa0]
      1c: 7900013f     	strh	wzr, [x9]
      20: d10f0005     	sub	x5, x0, #0x3c0
      24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000024:  R_AARCH64_ADR_PREL_PG_HI21	__this_module
      28: 91000000     	add	x0, x0, #0x0
		0000000000000028:  R_AARCH64_ADD_ABS_LO12_NC	__this_module
      2c: f9400102     	ldr	x2, [x8]
		000000000000002c:  R_AARCH64_LDST64_ABS_LO12_NC	aw_ram_name
      30: 90000006     	adrp	x6, 0x0 <.text>
		0000000000000030:  R_AARCH64_ADR_PREL_PG_HI21	ram_load
      34: 910000c6     	add	x6, x6, #0x0
		0000000000000034:  R_AARCH64_ADD_ABS_LO12_NC	ram_load
      38: 52800021     	mov	w1, #0x1                // =1
      3c: 52819804     	mov	w4, #0xcc0              // =3264
      40: 94000000     	bl	0x40 <ram_work_routine+0x3c>
		0000000000000040:  R_AARCH64_CALL26	request_firmware_nowait
      44: a8c17bfd     	ldp	x29, x30, [sp], #0x10
      48: d50323bf     	autiasp
      4c: d65f03c0     	ret
