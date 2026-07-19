
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000011528 <syna_tcm_get_partition_id_string>:
   11528: 51000408     	sub	w8, w0, #0x1
   1152c: 7100591f     	cmp	w8, #0x16
   11530: 540000a8     	b.hi	0x11544 <syna_tcm_get_partition_id_string+0x1c>
   11534: 90000009     	adrp	x9, 0x11000 <syna_tcm_get_dynamic_config+0xa8>
		0000000000011534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1410
   11538: 91000129     	add	x9, x9, #0x0
		0000000000011538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1410
   1153c: f8685920     	ldr	x0, [x9, w8, uxtw #3]
   11540: d65f03c0     	ret
   11544: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_dynamic_config+0xa8>
		0000000000011544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60b
   11548: 91000000     	add	x0, x0, #0x0
		0000000000011548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60b
   1154c: d65f03c0     	ret
