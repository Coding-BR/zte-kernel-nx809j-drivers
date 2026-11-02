
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007668 <aw8693x_play_mode>:
    7668: d503233f     	paciasp
    766c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    7670: a9014ff4     	stp	x20, x19, [sp, #0x10]
    7674: 910003fd     	mov	x29, sp
    7678: 12001c28     	and	w8, w1, #0xff
    767c: aa0003f3     	mov	x19, x0
    7680: 7100091f     	cmp	w8, #0x2
    7684: 5400036c     	b.gt	0x76f0 <aw8693x_play_mode+0x88>
    7688: 340006a8     	cbz	w8, 0x775c <aw8693x_play_mode+0xf4>
    768c: 7100051f     	cmp	w8, #0x1
    7690: 54000be0     	b.eq	0x780c <aw8693x_play_mode+0x1a4>
    7694: 7100091f     	cmp	w8, #0x2
    7698: 54000a41     	b.ne	0x77e0 <aw8693x_play_mode+0x178>
    769c: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x68>
		000000000000769c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    76a0: 91000294     	add	x20, x20, #0x0
		00000000000076a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    76a4: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000076a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41c6
    76a8: 91000000     	add	x0, x0, #0x0
		00000000000076a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41c6
    76ac: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		00000000000076ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    76b0: 91000063     	add	x3, x3, #0x0
		00000000000076b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    76b4: aa1403e1     	mov	x1, x20
    76b8: 52804c62     	mov	w2, #0x263              // =611
    76bc: 94000000     	bl	0x76bc <aw8693x_play_mode+0x54>
		00000000000076bc:  R_AARCH64_CALL26	_printk
    76c0: 52800048     	mov	w8, #0x2                // =2
    76c4: aa1303e0     	mov	x0, x19
    76c8: 52800101     	mov	w1, #0x8                // =8
    76cc: 12800062     	mov	w2, #-0x4               // =-4
    76d0: 52800023     	mov	w3, #0x1                // =1
    76d4: 39005e68     	strb	w8, [x19, #0x17]
    76d8: 94000000     	bl	0x76d8 <aw8693x_play_mode+0x70>
		00000000000076d8:  R_AARCH64_CALL26	i2c_w_bits
    76dc: aa1303e0     	mov	x0, x19
    76e0: 52800101     	mov	w1, #0x8                // =8
    76e4: 12800082     	mov	w2, #-0x5               // =-5
    76e8: 52800083     	mov	w3, #0x4                // =4
    76ec: 1400005c     	b	0x785c <aw8693x_play_mode+0x1f4>
    76f0: 71000d1f     	cmp	w8, #0x3
    76f4: 54000580     	b.eq	0x77a4 <aw8693x_play_mode+0x13c>
    76f8: 7100111f     	cmp	w8, #0x4
    76fc: 54000d40     	b.eq	0x78a4 <aw8693x_play_mode+0x23c>
    7700: 7100151f     	cmp	w8, #0x5
    7704: 540006e1     	b.ne	0x77e0 <aw8693x_play_mode+0x178>
    7708: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x68>
		0000000000007708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    770c: 91000294     	add	x20, x20, #0x0
		000000000000770c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    7710: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c2c
    7714: 91000000     	add	x0, x0, #0x0
		0000000000007714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c2c
    7718: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    771c: 91000063     	add	x3, x3, #0x0
		000000000000771c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    7720: aa1403e1     	mov	x1, x20
    7724: 52804b22     	mov	w2, #0x259              // =601
    7728: 94000000     	bl	0x7728 <aw8693x_play_mode+0xc0>
		0000000000007728:  R_AARCH64_CALL26	_printk
    772c: 528000a8     	mov	w8, #0x5                // =5
    7730: aa1303e0     	mov	x0, x19
    7734: 52800101     	mov	w1, #0x8                // =8
    7738: 12800062     	mov	w2, #-0x4               // =-4
    773c: 2a1f03e3     	mov	w3, wzr
    7740: 39005e68     	strb	w8, [x19, #0x17]
    7744: 94000000     	bl	0x7744 <aw8693x_play_mode+0xdc>
		0000000000007744:  R_AARCH64_CALL26	i2c_w_bits
    7748: aa1303e0     	mov	x0, x19
    774c: 52800101     	mov	w1, #0x8                // =8
    7750: 12800082     	mov	w2, #-0x5               // =-5
    7754: 2a1f03e3     	mov	w3, wzr
    7758: 14000067     	b	0x78f4 <aw8693x_play_mode+0x28c>
    775c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		000000000000775c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d04
    7760: 91000000     	add	x0, x0, #0x0
		0000000000007760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d04
    7764: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    7768: 91000021     	add	x1, x1, #0x0
		0000000000007768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    776c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		000000000000776c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    7770: 91000063     	add	x3, x3, #0x0
		0000000000007770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    7774: 528047c2     	mov	w2, #0x23e              // =574
    7778: 94000000     	bl	0x7778 <aw8693x_play_mode+0x110>
		0000000000007778:  R_AARCH64_CALL26	_printk
    777c: aa1303e0     	mov	x0, x19
    7780: 528008a1     	mov	w1, #0x45               // =69
    7784: 12800402     	mov	w2, #-0x21              // =-33
    7788: 52800403     	mov	w3, #0x20               // =32
    778c: 39005e7f     	strb	wzr, [x19, #0x17]
    7790: 94000000     	bl	0x7790 <aw8693x_play_mode+0x128>
		0000000000007790:  R_AARCH64_CALL26	i2c_w_bits
    7794: aa1303e0     	mov	x0, x19
    7798: 528008a1     	mov	w1, #0x45               // =69
    779c: 12800402     	mov	w2, #-0x21              // =-33
    77a0: 1400003f     	b	0x789c <aw8693x_play_mode+0x234>
    77a4: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000077a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x279e
    77a8: 91000000     	add	x0, x0, #0x0
		00000000000077a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x279e
    77ac: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		00000000000077ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    77b0: 91000021     	add	x1, x1, #0x0
		00000000000077b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    77b4: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		00000000000077b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    77b8: 91000063     	add	x3, x3, #0x0
		00000000000077b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    77bc: 52804da2     	mov	w2, #0x26d              // =621
    77c0: 94000000     	bl	0x77c0 <aw8693x_play_mode+0x158>
		00000000000077c0:  R_AARCH64_CALL26	_printk
    77c4: 52800068     	mov	w8, #0x3                // =3
    77c8: aa1303e0     	mov	x0, x19
    77cc: 52800101     	mov	w1, #0x8                // =8
    77d0: 12800062     	mov	w2, #-0x4               // =-4
    77d4: 2a1f03e3     	mov	w3, wzr
    77d8: 39005e68     	strb	w8, [x19, #0x17]
    77dc: 1400002c     	b	0x788c <aw8693x_play_mode+0x224>
    77e0: 90000008     	adrp	x8, 0x7000 <richtap_rtp_work+0x68>
		00000000000077e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    77e4: 91000108     	add	x8, x8, #0x0
		00000000000077e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    77e8: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000077e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x45ec
    77ec: 91000000     	add	x0, x0, #0x0
		00000000000077ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x45ec
    77f0: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		00000000000077f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    77f4: 91000063     	add	x3, x3, #0x0
		00000000000077f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    77f8: 12001c24     	and	w4, w1, #0xff
    77fc: aa0803e1     	mov	x1, x8
    7800: 52804fe2     	mov	w2, #0x27f              // =639
    7804: 94000000     	bl	0x7804 <aw8693x_play_mode+0x19c>
		0000000000007804:  R_AARCH64_CALL26	_printk
    7808: 1400004d     	b	0x793c <aw8693x_play_mode+0x2d4>
    780c: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x68>
		000000000000780c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    7810: 91000294     	add	x20, x20, #0x0
		0000000000007810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    7814: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c52
    7818: 91000000     	add	x0, x0, #0x0
		0000000000007818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c52
    781c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		000000000000781c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    7820: 91000063     	add	x3, x3, #0x0
		0000000000007820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    7824: aa1403e1     	mov	x1, x20
    7828: 528049e2     	mov	w2, #0x24f              // =591
    782c: 94000000     	bl	0x782c <aw8693x_play_mode+0x1c4>
		000000000000782c:  R_AARCH64_CALL26	_printk
    7830: 52800028     	mov	w8, #0x1                // =1
    7834: aa1303e0     	mov	x0, x19
    7838: 52800101     	mov	w1, #0x8                // =8
    783c: 12800062     	mov	w2, #-0x4               // =-4
    7840: 2a1f03e3     	mov	w3, wzr
    7844: 39005e68     	strb	w8, [x19, #0x17]
    7848: 94000000     	bl	0x7848 <aw8693x_play_mode+0x1e0>
		0000000000007848:  R_AARCH64_CALL26	i2c_w_bits
    784c: aa1303e0     	mov	x0, x19
    7850: 52800101     	mov	w1, #0x8                // =8
    7854: 12800082     	mov	w2, #-0x5               // =-5
    7858: 2a1f03e3     	mov	w3, wzr
    785c: 94000000     	bl	0x785c <aw8693x_play_mode+0x1f4>
		000000000000785c:  R_AARCH64_CALL26	i2c_w_bits
    7860: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41e6
    7864: 91000000     	add	x0, x0, #0x0
		0000000000007864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41e6
    7868: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd2
    786c: 91000063     	add	x3, x3, #0x0
		000000000000786c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd2
    7870: aa1403e1     	mov	x1, x20
    7874: 52803f02     	mov	w2, #0x1f8              // =504
    7878: 94000000     	bl	0x7878 <aw8693x_play_mode+0x210>
		0000000000007878:  R_AARCH64_CALL26	_printk
    787c: aa1303e0     	mov	x0, x19
    7880: 528000c1     	mov	w1, #0x6                // =6
    7884: 12800402     	mov	w2, #-0x21              // =-33
    7888: 52800403     	mov	w3, #0x20               // =32
    788c: 94000000     	bl	0x788c <aw8693x_play_mode+0x224>
		000000000000788c:  R_AARCH64_CALL26	i2c_w_bits
    7890: aa1303e0     	mov	x0, x19
    7894: 52800981     	mov	w1, #0x4c               // =76
    7898: 12800802     	mov	w2, #-0x41              // =-65
    789c: 2a1f03e3     	mov	w3, wzr
    78a0: 14000026     	b	0x7938 <aw8693x_play_mode+0x2d0>
    78a4: 90000014     	adrp	x20, 0x7000 <richtap_rtp_work+0x68>
		00000000000078a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    78a8: 91000294     	add	x20, x20, #0x0
		00000000000078a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    78ac: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000078ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3378
    78b0: 91000000     	add	x0, x0, #0x0
		00000000000078b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3378
    78b4: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		00000000000078b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23d0
    78b8: 91000063     	add	x3, x3, #0x0
		00000000000078b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23d0
    78bc: aa1403e1     	mov	x1, x20
    78c0: 52804ea2     	mov	w2, #0x275              // =629
    78c4: 94000000     	bl	0x78c4 <aw8693x_play_mode+0x25c>
		00000000000078c4:  R_AARCH64_CALL26	_printk
    78c8: 52800088     	mov	w8, #0x4                // =4
    78cc: aa1303e0     	mov	x0, x19
    78d0: 52800101     	mov	w1, #0x8                // =8
    78d4: 12800062     	mov	w2, #-0x4               // =-4
    78d8: 52800043     	mov	w3, #0x2                // =2
    78dc: 39005e68     	strb	w8, [x19, #0x17]
    78e0: 94000000     	bl	0x78e0 <aw8693x_play_mode+0x278>
		00000000000078e0:  R_AARCH64_CALL26	i2c_w_bits
    78e4: aa1303e0     	mov	x0, x19
    78e8: 52800101     	mov	w1, #0x8                // =8
    78ec: 12800082     	mov	w2, #-0x5               // =-5
    78f0: 52800083     	mov	w3, #0x4                // =4
    78f4: 94000000     	bl	0x78f4 <aw8693x_play_mode+0x28c>
		00000000000078f4:  R_AARCH64_CALL26	i2c_w_bits
    78f8: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000078f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2050
    78fc: 91000000     	add	x0, x0, #0x0
		00000000000078fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2050
    7900: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007900:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd2
    7904: 91000063     	add	x3, x3, #0x0
		0000000000007904:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd2
    7908: aa1403e1     	mov	x1, x20
    790c: 52803fc2     	mov	w2, #0x1fe              // =510
    7910: 94000000     	bl	0x7910 <aw8693x_play_mode+0x2a8>
		0000000000007910:  R_AARCH64_CALL26	_printk
    7914: aa1303e0     	mov	x0, x19
    7918: 528000c1     	mov	w1, #0x6                // =6
    791c: 12800402     	mov	w2, #-0x21              // =-33
    7920: 2a1f03e3     	mov	w3, wzr
    7924: 94000000     	bl	0x7924 <aw8693x_play_mode+0x2bc>
		0000000000007924:  R_AARCH64_CALL26	i2c_w_bits
    7928: aa1303e0     	mov	x0, x19
    792c: 52800981     	mov	w1, #0x4c               // =76
    7930: 12800802     	mov	w2, #-0x41              // =-65
    7934: 52800803     	mov	w3, #0x40               // =64
    7938: 94000000     	bl	0x7938 <aw8693x_play_mode+0x2d0>
		0000000000007938:  R_AARCH64_CALL26	i2c_w_bits
    793c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    7940: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    7944: d50323bf     	autiasp
    7948: d65f03c0     	ret
