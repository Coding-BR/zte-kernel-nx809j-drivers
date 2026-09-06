
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017fbc <syna_tcm_testing_0500_check_upper_bound>:
   17fbc: d503233f     	paciasp
   17fc0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   17fc4: a9014ff4     	stp	x20, x19, [sp, #0x10]
   17fc8: 910003fd     	mov	x29, sp
   17fcc: 79400013     	ldrh	w19, [x0]
   17fd0: 79400034     	ldrh	w20, [x1]
   17fd4: 6b14027f     	cmp	w19, w20
   17fd8: 540000e8     	b.hi	0x17ff4 <syna_tcm_testing_0500_check_upper_bound+0x38>
   17fdc: 6b14027f     	cmp	w19, w20
   17fe0: 1a9f87e0     	cset	w0, ls
   17fe4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   17fe8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   17fec: d50323bf     	autiasp
   17ff0: d65f03c0     	ret
   17ff4: 2a0203e8     	mov	w8, w2
   17ff8: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb532
   17ffc: 91000000     	add	x0, x0, #0x0
		0000000000017ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb532
   18000: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7097
   18004: 91000021     	add	x1, x1, #0x0
		0000000000018004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7097
   18008: 2a0303e2     	mov	w2, w3
   1800c: 2a0803e3     	mov	w3, w8
   18010: 2a1303e4     	mov	w4, w19
   18014: 2a1403e5     	mov	w5, w20
   18018: 94000000     	bl	0x18018 <syna_tcm_testing_0500_check_upper_bound+0x5c>
		0000000000018018:  R_AARCH64_CALL26	_printk
   1801c: 17fffff0     	b	0x17fdc <syna_tcm_testing_0500_check_upper_bound+0x20>
