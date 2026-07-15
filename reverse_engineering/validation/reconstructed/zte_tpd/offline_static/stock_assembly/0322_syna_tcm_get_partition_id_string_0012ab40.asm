
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000242b8 <syna_tcm_get_partition_id_string>:
   242b8: 51000408     	sub	w8, w0, #0x1
   242bc: 7100591f     	cmp	w8, #0x16
   242c0: 540000a8     	b.hi	0x242d4 <syna_tcm_get_partition_id_string+0x1c>
   242c4: 90000009     	adrp	x9, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000242c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4910
   242c8: 91000129     	add	x9, x9, #0x0
		00000000000242c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4910
   242cc: f8685920     	ldr	x0, [x9, w8, uxtw #3]
   242d0: d65f03c0     	ret
   242d4: 90000000     	adrp	x0, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		00000000000242d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ee
   242d8: 91000000     	add	x0, x0, #0x0
		00000000000242d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ee
   242dc: d65f03c0     	ret
