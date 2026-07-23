
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bc18 <syna_spi_get_gpio>:
    bc18: d503233f     	paciasp
    bc1c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    bc20: a90157f6     	stp	x22, x21, [sp, #0x10]
    bc24: a9024ff4     	stp	x20, x19, [sp, #0x20]
    bc28: 910003fd     	mov	x29, sp
    bc2c: 2a0003f3     	mov	w19, w0
    bc30: aa0303f6     	mov	x22, x3
    bc34: 2a0203f4     	mov	w20, w2
    bc38: 2a0103f5     	mov	w21, w1
    bc3c: 90000002     	adrp	x2, 0xb000 <syna_ioctl+0x64>
		000000000000bc3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38f6
    bc40: 91000042     	add	x2, x2, #0x0
		000000000000bc40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38f6
    bc44: aa0303e0     	mov	x0, x3
    bc48: 52800201     	mov	w1, #0x10               // =16
    bc4c: 2a1303e3     	mov	w3, w19
    bc50: 94000000     	bl	0xbc50 <syna_spi_get_gpio+0x38>
		000000000000bc50:  R_AARCH64_CALL26	scnprintf
    bc54: 37f802c0     	tbnz	w0, #0x1f, 0xbcac <syna_spi_get_gpio+0x94>
    bc58: 2a1303e0     	mov	w0, w19
    bc5c: aa1603e1     	mov	x1, x22
    bc60: 94000000     	bl	0xbc60 <syna_spi_get_gpio+0x48>
		000000000000bc60:  R_AARCH64_CALL26	gpio_request
    bc64: 37f80360     	tbnz	w0, #0x1f, 0xbcd0 <syna_spi_get_gpio+0xb8>
    bc68: 2a1303e0     	mov	w0, w19
    bc6c: 94000000     	bl	0xbc6c <syna_spi_get_gpio+0x54>
		000000000000bc6c:  R_AARCH64_CALL26	gpio_to_desc
    bc70: 34000155     	cbz	w21, 0xbc98 <syna_spi_get_gpio+0x80>
    bc74: 2a1403e1     	mov	w1, w20
    bc78: 94000000     	bl	0xbc78 <syna_spi_get_gpio+0x60>
		000000000000bc78:  R_AARCH64_CALL26	gpiod_direction_output_raw
    bc7c: 37f80120     	tbnz	w0, #0x1f, 0xbca0 <syna_spi_get_gpio+0x88>
    bc80: 2a1f03e0     	mov	w0, wzr
    bc84: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    bc88: a94157f6     	ldp	x22, x21, [sp, #0x10]
    bc8c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    bc90: d50323bf     	autiasp
    bc94: d65f03c0     	ret
    bc98: 94000000     	bl	0xbc98 <syna_spi_get_gpio+0x80>
		000000000000bc98:  R_AARCH64_CALL26	gpiod_direction_input
    bc9c: 36ffff20     	tbz	w0, #0x1f, 0xbc80 <syna_spi_get_gpio+0x68>
    bca0: 90000008     	adrp	x8, 0xb000 <syna_ioctl+0x64>
		000000000000bca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e9c
    bca4: 91000108     	add	x8, x8, #0x0
		000000000000bca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e9c
    bca8: 1400000c     	b	0xbcd8 <syna_spi_get_gpio+0xc0>
    bcac: 90000008     	adrp	x8, 0xb000 <syna_ioctl+0x64>
		000000000000bcac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x433d
    bcb0: 91000108     	add	x8, x8, #0x0
		000000000000bcb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x433d
    bcb4: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x64>
		000000000000bcb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacf
    bcb8: 91000021     	add	x1, x1, #0x0
		000000000000bcb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacf
    bcbc: 2a0003f3     	mov	w19, w0
    bcc0: aa0803e0     	mov	x0, x8
    bcc4: 94000000     	bl	0xbcc4 <syna_spi_get_gpio+0xac>
		000000000000bcc4:  R_AARCH64_CALL26	_printk
    bcc8: 2a1303e0     	mov	w0, w19
    bccc: 17ffffee     	b	0xbc84 <syna_spi_get_gpio+0x6c>
    bcd0: 90000008     	adrp	x8, 0xb000 <syna_ioctl+0x64>
		000000000000bcd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bc0
    bcd4: 91000108     	add	x8, x8, #0x0
		000000000000bcd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bc0
    bcd8: 90000001     	adrp	x1, 0xb000 <syna_ioctl+0x64>
		000000000000bcd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xacf
    bcdc: 91000021     	add	x1, x1, #0x0
		000000000000bcdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xacf
    bce0: 2a0003f4     	mov	w20, w0
    bce4: aa0803e0     	mov	x0, x8
    bce8: 2a1303e2     	mov	w2, w19
    bcec: 94000000     	bl	0xbcec <syna_spi_get_gpio+0xd4>
		000000000000bcec:  R_AARCH64_CALL26	_printk
    bcf0: 2a1403e0     	mov	w0, w20
    bcf4: 17ffffe4     	b	0xbc84 <syna_spi_get_gpio+0x6c>
