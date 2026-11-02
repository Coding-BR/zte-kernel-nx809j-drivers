
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a8cc <syna_tcm_get_partition_id_string>:
   1a8cc: 51000408     	sub	w8, w0, #0x1
   1a8d0: 7100591f     	cmp	w8, #0x16
   1a8d4: 540000a8     	b.hi	0x1a8e8 <syna_tcm_get_partition_id_string+0x1c>
   1a8d8: 90000009     	adrp	x9, 0x1a000 <edge_long_press_up+0x230>
		000000000001a8d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x13e88
   1a8dc: 91000129     	add	x9, x9, #0x0
		000000000001a8dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x13e88
   1a8e0: f8685920     	ldr	x0, [x9, w8, uxtw #3]
   1a8e4: d65f03c0     	ret
   1a8e8: 90000000     	adrp	x0, 0x1a000 <edge_long_press_up+0x230>
		000000000001a8e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x112c
   1a8ec: 91000000     	add	x0, x0, #0x0
		000000000001a8ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x112c
   1a8f0: d65f03c0     	ret
