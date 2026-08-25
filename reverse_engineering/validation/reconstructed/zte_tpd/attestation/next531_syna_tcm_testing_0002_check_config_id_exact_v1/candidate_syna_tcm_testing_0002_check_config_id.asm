
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000202f0 <syna_tcm_testing_0002_check_config_id>:
   202f0: 2a1f03e8     	mov	w8, wzr
   202f4: b4000360     	cbz	x0, 0x20360 <syna_tcm_testing_0002_check_config_id+0x70>
   202f8: aa0103e3     	mov	x3, x1
   202fc: b4000321     	cbz	x1, 0x20360 <syna_tcm_testing_0002_check_config_id+0x70>
   20300: 37f80122     	tbnz	w2, #0x1f, 0x20324 <syna_tcm_testing_0002_check_config_id+0x34>
   20304: 2a1f03e8     	mov	w8, wzr
   20308: 3868c809     	ldrb	w9, [x0, w8, sxtw]
   2030c: 3868c86a     	ldrb	w10, [x3, w8, sxtw]
   20310: 6b0a013f     	cmp	w9, w10
   20314: 540000c1     	b.ne	0x2032c <syna_tcm_testing_0002_check_config_id+0x3c>
   20318: 11000508     	add	w8, w8, #0x1
   2031c: 6b02011f     	cmp	w8, w2
   20320: 54ffff4d     	b.le	0x20308 <syna_tcm_testing_0002_check_config_id+0x18>
   20324: 52800020     	mov	w0, #0x1                // =1
   20328: d65f03c0     	ret
   2032c: d503233f     	paciasp
   20330: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   20334: 910003fd     	mov	x29, sp
   20338: 90000008     	adrp	x8, 0x20000 <syna_tcm_testing_0001_check_device_id+0x48>
		0000000000020338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfce0
   2033c: 91000108     	add	x8, x8, #0x0
		000000000002033c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfce0
   20340: 90000001     	adrp	x1, 0x20000 <syna_tcm_testing_0001_check_device_id+0x48>
		0000000000020340:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x113a7
   20344: 91000021     	add	x1, x1, #0x0
		0000000000020344:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x113a7
   20348: aa0003e2     	mov	x2, x0
   2034c: aa0803e0     	mov	x0, x8
   20350: 94000000     	bl	0x20350 <syna_tcm_testing_0002_check_config_id+0x60>
		0000000000020350:  R_AARCH64_CALL26	_printk
   20354: 2a1f03e8     	mov	w8, wzr
   20358: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2035c: d50323bf     	autiasp
   20360: 2a0803e0     	mov	w0, w8
   20364: d65f03c0     	ret
