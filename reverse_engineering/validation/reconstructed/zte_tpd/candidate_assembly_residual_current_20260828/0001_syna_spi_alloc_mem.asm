
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000022ff4 <syna_spi_alloc_mem>:
   22ff4: d503233f     	paciasp
   22ff8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   22ffc: a9015ff8     	stp	x24, x23, [sp, #0x10]
   23000: a90257f6     	stp	x22, x21, [sp, #0x20]
   23004: a9034ff4     	stp	x20, x19, [sp, #0x30]
   23008: 910003fd     	mov	x29, sp
   2300c: 90000015     	adrp	x21, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002300c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6414
   23010: 90000016     	adrp	x22, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023010:  R_AARCH64_ADR_PREL_PG_HI21	xfer
   23014: 2a0003f4     	mov	w20, w0
   23018: b94002a9     	ldr	w9, [x21]
		0000000000023018:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6414
   2301c: f94002c8     	ldr	x8, [x22]
		000000000002301c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   23020: 2a0103f3     	mov	w19, w1
   23024: 6b00013f     	cmp	w9, w0
   23028: 54000322     	b.hs	0x2308c <syna_spi_alloc_mem+0x98>
   2302c: 90000017     	adrp	x23, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002302c:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   23030: f94002e9     	ldr	x9, [x23]
		0000000000023030:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23034: b4000989     	cbz	x9, 0x23164 <syna_spi_alloc_mem+0x170>
   23038: f9403920     	ldr	x0, [x9, #0x70]
   2303c: b4000940     	cbz	x0, 0x23164 <syna_spi_alloc_mem+0x170>
   23040: b4000068     	cbz	x8, 0x2304c <syna_spi_alloc_mem+0x58>
   23044: aa0803e1     	mov	x1, x8
   23048: 94000000     	bl	0x23048 <syna_spi_alloc_mem+0x54>
		0000000000023048:  R_AARCH64_CALL26	devm_kfree
   2304c: f94002e8     	ldr	x8, [x23]
		000000000002304c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23050: b4000988     	cbz	x8, 0x23180 <syna_spi_alloc_mem+0x18c>
   23054: f9403900     	ldr	x0, [x8, #0x70]
   23058: b4000940     	cbz	x0, 0x23180 <syna_spi_alloc_mem+0x18c>
   2305c: 0b141288     	add	w8, w20, w20, lsl #4
   23060: 531d7108     	lsl	w8, w8, #3
   23064: 7100011f     	cmp	w8, #0x0
   23068: 54000c2d     	b.le	0x231ec <syna_spi_alloc_mem+0x1f8>
   2306c: 52801108     	mov	w8, #0x88               // =136
   23070: 5281b802     	mov	w2, #0xdc0              // =3520
   23074: 9ba87e81     	umull	x1, w20, w8
   23078: 94000000     	bl	0x23078 <syna_spi_alloc_mem+0x84>
		0000000000023078:  R_AARCH64_CALL26	devm_kmalloc
   2307c: f90002c0     	str	x0, [x22]
		000000000002307c:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   23080: b4000c20     	cbz	x0, 0x23204 <syna_spi_alloc_mem+0x210>
   23084: b90002b4     	str	w20, [x21]
		0000000000023084:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6414
   23088: 14000006     	b	0x230a0 <syna_spi_alloc_mem+0xac>
   2308c: 0b141289     	add	w9, w20, w20, lsl #4
   23090: aa0803e0     	mov	x0, x8
   23094: 2a1f03e1     	mov	w1, wzr
   23098: 531d7122     	lsl	w2, w9, #3
   2309c: 94000000     	bl	0x2309c <syna_spi_alloc_mem+0xa8>
		000000000002309c:  R_AARCH64_CALL26	memset
   230a0: 90000015     	adrp	x21, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000230a0:  R_AARCH64_ADR_PREL_PG_HI21	buf_size
   230a4: b94002a8     	ldr	w8, [x21]
		00000000000230a4:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   230a8: 6b13011f     	cmp	w8, w19
   230ac: 54000582     	b.hs	0x2315c <syna_spi_alloc_mem+0x168>
   230b0: 90000016     	adrp	x22, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000230b0:  R_AARCH64_ADR_PREL_PG_HI21	rx_buf
   230b4: 90000017     	adrp	x23, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000230b4:  R_AARCH64_ADR_PREL_PG_HI21	p_device
   230b8: f94002c1     	ldr	x1, [x22]
		00000000000230b8:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   230bc: b40000e1     	cbz	x1, 0x230d8 <syna_spi_alloc_mem+0xe4>
   230c0: f94002e8     	ldr	x8, [x23]
		00000000000230c0:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   230c4: b40007c8     	cbz	x8, 0x231bc <syna_spi_alloc_mem+0x1c8>
   230c8: f9403900     	ldr	x0, [x8, #0x70]
   230cc: b4000780     	cbz	x0, 0x231bc <syna_spi_alloc_mem+0x1c8>
   230d0: 94000000     	bl	0x230d0 <syna_spi_alloc_mem+0xdc>
		00000000000230d0:  R_AARCH64_CALL26	devm_kfree
   230d4: f90002df     	str	xzr, [x22]
		00000000000230d4:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   230d8: 90000018     	adrp	x24, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000230d8:  R_AARCH64_ADR_PREL_PG_HI21	tx_buf
   230dc: f9400301     	ldr	x1, [x24]
		00000000000230dc:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   230e0: b40000e1     	cbz	x1, 0x230fc <syna_spi_alloc_mem+0x108>
   230e4: f94002e8     	ldr	x8, [x23]
		00000000000230e4:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   230e8: b4000768     	cbz	x8, 0x231d4 <syna_spi_alloc_mem+0x1e0>
   230ec: f9403900     	ldr	x0, [x8, #0x70]
   230f0: b4000720     	cbz	x0, 0x231d4 <syna_spi_alloc_mem+0x1e0>
   230f4: 94000000     	bl	0x230f4 <syna_spi_alloc_mem+0x100>
		00000000000230f4:  R_AARCH64_CALL26	devm_kfree
   230f8: f900031f     	str	xzr, [x24]
		00000000000230f8:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   230fc: f94002e8     	ldr	x8, [x23]
		00000000000230fc:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23100: b4000468     	cbz	x8, 0x2318c <syna_spi_alloc_mem+0x198>
   23104: f9403900     	ldr	x0, [x8, #0x70]
   23108: b4000420     	cbz	x0, 0x2318c <syna_spi_alloc_mem+0x198>
   2310c: 7100027f     	cmp	w19, #0x0
   23110: 5400088d     	b.le	0x23220 <syna_spi_alloc_mem+0x22c>
   23114: 2a1303f4     	mov	w20, w19
   23118: 5281b802     	mov	w2, #0xdc0              // =3520
   2311c: aa1403e1     	mov	x1, x20
   23120: 94000000     	bl	0x23120 <syna_spi_alloc_mem+0x12c>
		0000000000023120:  R_AARCH64_CALL26	devm_kmalloc
   23124: f90002c0     	str	x0, [x22]
		0000000000023124:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   23128: b4000880     	cbz	x0, 0x23238 <syna_spi_alloc_mem+0x244>
   2312c: f94002e8     	ldr	x8, [x23]
		000000000002312c:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   23130: b4000348     	cbz	x8, 0x23198 <syna_spi_alloc_mem+0x1a4>
   23134: f9403900     	ldr	x0, [x8, #0x70]
   23138: b4000300     	cbz	x0, 0x23198 <syna_spi_alloc_mem+0x1a4>
   2313c: aa1403e1     	mov	x1, x20
   23140: 5281b802     	mov	w2, #0xdc0              // =3520
   23144: 94000000     	bl	0x23144 <syna_spi_alloc_mem+0x150>
		0000000000023144:  R_AARCH64_CALL26	devm_kmalloc
   23148: f9000300     	str	x0, [x24]
		0000000000023148:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   2314c: b4000320     	cbz	x0, 0x231b0 <syna_spi_alloc_mem+0x1bc>
   23150: 2a1f03e0     	mov	w0, wzr
   23154: b90002b3     	str	w19, [x21]
		0000000000023154:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   23158: 1400003f     	b	0x23254 <syna_spi_alloc_mem+0x260>
   2315c: 2a1f03e0     	mov	w0, wzr
   23160: 1400003d     	b	0x23254 <syna_spi_alloc_mem+0x260>
   23164: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23168: 91000000     	add	x0, x0, #0x0
		0000000000023168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   2316c: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002316c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   23170: 91000021     	add	x1, x1, #0x0
		0000000000023170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23174: 94000000     	bl	0x23174 <syna_spi_alloc_mem+0x180>
		0000000000023174:  R_AARCH64_CALL26	_printk
   23178: f94002e8     	ldr	x8, [x23]
		0000000000023178:  R_AARCH64_LDST64_ABS_LO12_NC	p_device
   2317c: b5fff6c8     	cbnz	x8, 0x23054 <syna_spi_alloc_mem+0x60>
   23180: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23184: 91000000     	add	x0, x0, #0x0
		0000000000023184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23188: 1400001b     	b	0x231f4 <syna_spi_alloc_mem+0x200>
   2318c: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002318c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23190: 91000000     	add	x0, x0, #0x0
		0000000000023190:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23194: 14000025     	b	0x23228 <syna_spi_alloc_mem+0x234>
   23198: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   2319c: 91000000     	add	x0, x0, #0x0
		000000000002319c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231a0: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   231a4: 91000021     	add	x1, x1, #0x0
		00000000000231a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   231a8: 94000000     	bl	0x231a8 <syna_spi_alloc_mem+0x1b4>
		00000000000231a8:  R_AARCH64_CALL26	_printk
   231ac: f900031f     	str	xzr, [x24]
		00000000000231ac:  R_AARCH64_LDST64_ABS_LO12_NC	tx_buf
   231b0: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x183c3
   231b4: 91000000     	add	x0, x0, #0x0
		00000000000231b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x183c3
   231b8: 14000022     	b	0x23240 <syna_spi_alloc_mem+0x24c>
   231bc: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   231c0: 91000000     	add	x0, x0, #0x0
		00000000000231c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231c4: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   231c8: 91000021     	add	x1, x1, #0x0
		00000000000231c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   231cc: 94000000     	bl	0x231cc <syna_spi_alloc_mem+0x1d8>
		00000000000231cc:  R_AARCH64_CALL26	_printk
   231d0: 17ffffc1     	b	0x230d4 <syna_spi_alloc_mem+0xe0>
   231d4: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   231d8: 91000000     	add	x0, x0, #0x0
		00000000000231d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   231dc: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   231e0: 91000021     	add	x1, x1, #0x0
		00000000000231e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   231e4: 94000000     	bl	0x231e4 <syna_spi_alloc_mem+0x1f0>
		00000000000231e4:  R_AARCH64_CALL26	_printk
   231e8: 17ffffc4     	b	0x230f8 <syna_spi_alloc_mem+0x104>
   231ec: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   231f0: 91000000     	add	x0, x0, #0x0
		00000000000231f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   231f4: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		00000000000231f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   231f8: 91000021     	add	x1, x1, #0x0
		00000000000231f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   231fc: 94000000     	bl	0x231fc <syna_spi_alloc_mem+0x208>
		00000000000231fc:  R_AARCH64_CALL26	_printk
   23200: f90002df     	str	xzr, [x22]
		0000000000023200:  R_AARCH64_LDST64_ABS_LO12_NC	xfer
   23204: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023204:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c08
   23208: 91000000     	add	x0, x0, #0x0
		0000000000023208:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c08
   2320c: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		000000000002320c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19755
   23210: 91000021     	add	x1, x1, #0x0
		0000000000023210:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19755
   23214: 94000000     	bl	0x23214 <syna_spi_alloc_mem+0x220>
		0000000000023214:  R_AARCH64_CALL26	_printk
   23218: b90002bf     	str	wzr, [x21]
		0000000000023218:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x6414
   2321c: 1400000d     	b	0x23250 <syna_spi_alloc_mem+0x25c>
   23220: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   23224: 91000000     	add	x0, x0, #0x0
		0000000000023224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   23228: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023228:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   2322c: 91000021     	add	x1, x1, #0x0
		000000000002322c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   23230: 94000000     	bl	0x23230 <syna_spi_alloc_mem+0x23c>
		0000000000023230:  R_AARCH64_CALL26	_printk
   23234: f90002df     	str	xzr, [x22]
		0000000000023234:  R_AARCH64_LDST64_ABS_LO12_NC	rx_buf
   23238: 90000000     	adrp	x0, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b30a
   2323c: 91000000     	add	x0, x0, #0x0
		000000000002323c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b30a
   23240: 90000001     	adrp	x1, 0x23000 <syna_spi_alloc_mem+0xc>
		0000000000023240:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19755
   23244: 91000021     	add	x1, x1, #0x0
		0000000000023244:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19755
   23248: 94000000     	bl	0x23248 <syna_spi_alloc_mem+0x254>
		0000000000023248:  R_AARCH64_CALL26	_printk
   2324c: b90002bf     	str	wzr, [x21]
		000000000002324c:  R_AARCH64_LDST32_ABS_LO12_NC	buf_size
   23250: 12800160     	mov	w0, #-0xc               // =-12
   23254: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   23258: a94257f6     	ldp	x22, x21, [sp, #0x20]
   2325c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   23260: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   23264: d50323bf     	autiasp
   23268: d65f03c0     	ret
