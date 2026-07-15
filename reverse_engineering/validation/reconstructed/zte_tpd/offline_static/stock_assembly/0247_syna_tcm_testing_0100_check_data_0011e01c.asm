
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000017794 <syna_tcm_testing_0100_check_data>:
   17794: d503233f     	paciasp
   17798: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1779c: a90157f6     	stp	x22, x21, [sp, #0x10]
   177a0: a9024ff4     	stp	x20, x19, [sp, #0x20]
   177a4: 910003fd     	mov	x29, sp
   177a8: 39400015     	ldrb	w21, [x0]
   177ac: 39400028     	ldrb	w8, [x1]
   177b0: 531d7053     	lsl	w19, w2, #3
   177b4: aa0103f4     	mov	x20, x1
   177b8: 120002a3     	and	w3, w21, #0x1
   177bc: 12000104     	and	w4, w8, #0x1
   177c0: 6b04007f     	cmp	w3, w4
   177c4: 1a9f17e0     	cset	w0, eq
   177c8: 54000441     	b.ne	0x17850 <syna_tcm_testing_0100_check_data+0xbc>
   177cc: 530106a3     	ubfx	w3, w21, #1, #1
   177d0: 53010504     	ubfx	w4, w8, #1, #1
   177d4: 6b04007f     	cmp	w3, w4
   177d8: 54000521     	b.ne	0x1787c <syna_tcm_testing_0100_check_data+0xe8>
   177dc: 53020aa3     	ubfx	w3, w21, #2, #1
   177e0: 53020904     	ubfx	w4, w8, #2, #1
   177e4: 6b04007f     	cmp	w3, w4
   177e8: 540005c1     	b.ne	0x178a0 <syna_tcm_testing_0100_check_data+0x10c>
   177ec: 53030ea3     	ubfx	w3, w21, #3, #1
   177f0: 53030d04     	ubfx	w4, w8, #3, #1
   177f4: 6b04007f     	cmp	w3, w4
   177f8: 54000661     	b.ne	0x178c4 <syna_tcm_testing_0100_check_data+0x130>
   177fc: 530412a3     	ubfx	w3, w21, #4, #1
   17800: 53041104     	ubfx	w4, w8, #4, #1
   17804: 6b04007f     	cmp	w3, w4
   17808: 54000701     	b.ne	0x178e8 <syna_tcm_testing_0100_check_data+0x154>
   1780c: 530516a3     	ubfx	w3, w21, #5, #1
   17810: 53051504     	ubfx	w4, w8, #5, #1
   17814: 6b04007f     	cmp	w3, w4
   17818: 540007a1     	b.ne	0x1790c <syna_tcm_testing_0100_check_data+0x178>
   1781c: 53061aa3     	ubfx	w3, w21, #6, #1
   17820: 53061904     	ubfx	w4, w8, #6, #1
   17824: 6b04007f     	cmp	w3, w4
   17828: 54000861     	b.ne	0x17934 <syna_tcm_testing_0100_check_data+0x1a0>
   1782c: 53077ea3     	lsr	w3, w21, #7
   17830: 53077d04     	lsr	w4, w8, #7
   17834: 6b04007f     	cmp	w3, w4
   17838: 54000901     	b.ne	0x17958 <syna_tcm_testing_0100_check_data+0x1c4>
   1783c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   17840: a94157f6     	ldp	x22, x21, [sp, #0x10]
   17844: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   17848: d50323bf     	autiasp
   1784c: d65f03c0     	ret
   17850: 90000008     	adrp	x8, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   17854: 91000108     	add	x8, x8, #0x0
		0000000000017854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   17858: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   1785c: 91000021     	add	x1, x1, #0x0
		000000000001785c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   17860: 2a0003f6     	mov	w22, w0
   17864: aa0803e0     	mov	x0, x8
   17868: 2a1303e2     	mov	w2, w19
   1786c: 94000000     	bl	0x1786c <syna_tcm_testing_0100_check_data+0xd8>
		000000000001786c:  R_AARCH64_CALL26	_printk
   17870: 39400288     	ldrb	w8, [x20]
   17874: 2a1603e0     	mov	w0, w22
   17878: 17ffffd5     	b	0x177cc <syna_tcm_testing_0100_check_data+0x38>
   1787c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001787c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   17880: 91000000     	add	x0, x0, #0x0
		0000000000017880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   17884: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   17888: 91000021     	add	x1, x1, #0x0
		0000000000017888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   1788c: 32000262     	orr	w2, w19, #0x1
   17890: 94000000     	bl	0x17890 <syna_tcm_testing_0100_check_data+0xfc>
		0000000000017890:  R_AARCH64_CALL26	_printk
   17894: 39400288     	ldrb	w8, [x20]
   17898: 2a1f03e0     	mov	w0, wzr
   1789c: 17ffffd0     	b	0x177dc <syna_tcm_testing_0100_check_data+0x48>
   178a0: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000178a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   178a4: 91000000     	add	x0, x0, #0x0
		00000000000178a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   178a8: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000178a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   178ac: 91000021     	add	x1, x1, #0x0
		00000000000178ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   178b0: 321f0262     	orr	w2, w19, #0x2
   178b4: 94000000     	bl	0x178b4 <syna_tcm_testing_0100_check_data+0x120>
		00000000000178b4:  R_AARCH64_CALL26	_printk
   178b8: 39400288     	ldrb	w8, [x20]
   178bc: 2a1f03e0     	mov	w0, wzr
   178c0: 17ffffcb     	b	0x177ec <syna_tcm_testing_0100_check_data+0x58>
   178c4: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000178c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   178c8: 91000000     	add	x0, x0, #0x0
		00000000000178c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   178cc: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000178cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   178d0: 91000021     	add	x1, x1, #0x0
		00000000000178d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   178d4: 32000662     	orr	w2, w19, #0x3
   178d8: 94000000     	bl	0x178d8 <syna_tcm_testing_0100_check_data+0x144>
		00000000000178d8:  R_AARCH64_CALL26	_printk
   178dc: 39400288     	ldrb	w8, [x20]
   178e0: 2a1f03e0     	mov	w0, wzr
   178e4: 17ffffc6     	b	0x177fc <syna_tcm_testing_0100_check_data+0x68>
   178e8: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000178e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   178ec: 91000000     	add	x0, x0, #0x0
		00000000000178ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   178f0: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000178f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   178f4: 91000021     	add	x1, x1, #0x0
		00000000000178f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   178f8: 321e0262     	orr	w2, w19, #0x4
   178fc: 94000000     	bl	0x178fc <syna_tcm_testing_0100_check_data+0x168>
		00000000000178fc:  R_AARCH64_CALL26	_printk
   17900: 39400288     	ldrb	w8, [x20]
   17904: 2a1f03e0     	mov	w0, wzr
   17908: 17ffffc1     	b	0x1780c <syna_tcm_testing_0100_check_data+0x78>
   1790c: 528000a8     	mov	w8, #0x5                // =5
   17910: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   17914: 91000000     	add	x0, x0, #0x0
		0000000000017914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   17918: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   1791c: 91000021     	add	x1, x1, #0x0
		000000000001791c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   17920: 2a080262     	orr	w2, w19, w8
   17924: 94000000     	bl	0x17924 <syna_tcm_testing_0100_check_data+0x190>
		0000000000017924:  R_AARCH64_CALL26	_printk
   17928: 39400288     	ldrb	w8, [x20]
   1792c: 2a1f03e0     	mov	w0, wzr
   17930: 17ffffbb     	b	0x1781c <syna_tcm_testing_0100_check_data+0x88>
   17934: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017934:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   17938: 91000000     	add	x0, x0, #0x0
		0000000000017938:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   1793c: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001793c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   17940: 91000021     	add	x1, x1, #0x0
		0000000000017940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   17944: 321f0662     	orr	w2, w19, #0x6
   17948: 94000000     	bl	0x17948 <syna_tcm_testing_0100_check_data+0x1b4>
		0000000000017948:  R_AARCH64_CALL26	_printk
   1794c: 39400288     	ldrb	w8, [x20]
   17950: 2a1f03e0     	mov	w0, wzr
   17954: 17ffffb6     	b	0x1782c <syna_tcm_testing_0100_check_data+0x98>
   17958: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa118
   1795c: 91000000     	add	x0, x0, #0x0
		000000000001795c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa118
   17960: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52c5
   17964: 91000021     	add	x1, x1, #0x0
		0000000000017964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52c5
   17968: 32000a62     	orr	w2, w19, #0x7
   1796c: 94000000     	bl	0x1796c <syna_tcm_testing_0100_check_data+0x1d8>
		000000000001796c:  R_AARCH64_CALL26	_printk
   17970: 2a1f03e0     	mov	w0, wzr
   17974: 17ffffb2     	b	0x1783c <syna_tcm_testing_0100_check_data+0xa8>
