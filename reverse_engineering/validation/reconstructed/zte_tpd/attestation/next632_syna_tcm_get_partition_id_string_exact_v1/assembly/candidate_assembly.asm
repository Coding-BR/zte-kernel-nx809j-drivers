
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029cfc <syna_tcm_get_partition_id_string>:
   29cfc: 51000408     	sub	w8, w0, #0x1
   29d00: 7100591f     	cmp	w8, #0x16
   29d04: 540000a8     	b.hi	0x29d18 <syna_tcm_get_partition_id_string+0x1c>
   29d08: 90000009     	adrp	x9, 0x29000 <tpd_report_work_deinit+0x4c>
		0000000000029d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x14070
   29d0c: 91000129     	add	x9, x9, #0x0
		0000000000029d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x14070
   29d10: f8685920     	ldr	x0, [x9, w8, uxtw #3]
   29d14: d65f03c0     	ret
   29d18: 90000000     	adrp	x0, 0x29000 <tpd_report_work_deinit+0x4c>
		0000000000029d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x112c
   29d1c: 91000000     	add	x0, x0, #0x0
		0000000000029d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x112c
   29d20: d65f03c0     	ret
