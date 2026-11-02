
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000171e8 <syna_tcm_testing_0002_check_config_id>:
   171e8: 2a1f03e8     	mov	w8, wzr
   171ec: b4000360     	cbz	x0, 0x17258 <syna_tcm_testing_0002_check_config_id+0x70>
   171f0: aa0103e3     	mov	x3, x1
   171f4: b4000321     	cbz	x1, 0x17258 <syna_tcm_testing_0002_check_config_id+0x70>
   171f8: 37f80122     	tbnz	w2, #0x1f, 0x1721c <syna_tcm_testing_0002_check_config_id+0x34>
   171fc: 2a1f03e8     	mov	w8, wzr
   17200: 3868c809     	ldrb	w9, [x0, w8, sxtw]
   17204: 3868c86a     	ldrb	w10, [x3, w8, sxtw]
   17208: 6b0a013f     	cmp	w9, w10
   1720c: 540000c1     	b.ne	0x17224 <syna_tcm_testing_0002_check_config_id+0x3c>
   17210: 11000508     	add	w8, w8, #0x1
   17214: 6b02011f     	cmp	w8, w2
   17218: 54ffff4d     	b.le	0x17200 <syna_tcm_testing_0002_check_config_id+0x18>
   1721c: 52800020     	mov	w0, #0x1                // =1
   17220: d65f03c0     	ret
   17224: d503233f     	paciasp
   17228: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1722c: 910003fd     	mov	x29, sp
   17230: 90000008     	adrp	x8, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017230:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x880b
   17234: 91000108     	add	x8, x8, #0x0
		0000000000017234:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x880b
   17238: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf5d
   1723c: 91000021     	add	x1, x1, #0x0
		000000000001723c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf5d
   17240: aa0003e2     	mov	x2, x0
   17244: aa0803e0     	mov	x0, x8
   17248: 94000000     	bl	0x17248 <syna_tcm_testing_0002_check_config_id+0x60>
		0000000000017248:  R_AARCH64_CALL26	_printk
   1724c: 2a1f03e8     	mov	w8, wzr
   17250: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   17254: d50323bf     	autiasp
   17258: 2a0803e0     	mov	w0, w8
   1725c: d65f03c0     	ret
