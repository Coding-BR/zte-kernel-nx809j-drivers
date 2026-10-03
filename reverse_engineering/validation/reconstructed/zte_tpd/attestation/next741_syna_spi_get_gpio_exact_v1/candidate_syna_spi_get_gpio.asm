
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cfdc <syna_spi_get_gpio>:
    cfdc: d503233f     	paciasp
    cfe0: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    cfe4: a90157f6     	stp	x22, x21, [sp, #0x10]
    cfe8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    cfec: 910003fd     	mov	x29, sp
    cff0: 2a0003f3     	mov	w19, w0
    cff4: aa0303f6     	mov	x22, x3
    cff8: 2a0203f4     	mov	w20, w2
    cffc: 2a0103f5     	mov	w21, w1
    d000: 90000002     	adrp	x2, 0xd000 <syna_spi_get_gpio+0x24>
		000000000000d000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bb89
    d004: 91000042     	add	x2, x2, #0x0
		000000000000d004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bb89
    d008: aa0303e0     	mov	x0, x3
    d00c: 52800201     	mov	w1, #0x10               // =16
    d010: 2a1303e3     	mov	w3, w19
    d014: 94000000     	bl	0xd014 <syna_spi_get_gpio+0x38>
		000000000000d014:  R_AARCH64_CALL26	scnprintf
    d018: 37f802c0     	tbnz	w0, #0x1f, 0xd070 <syna_spi_get_gpio+0x94>
    d01c: 2a1303e0     	mov	w0, w19
    d020: aa1603e1     	mov	x1, x22
    d024: 94000000     	bl	0xd024 <syna_spi_get_gpio+0x48>
		000000000000d024:  R_AARCH64_CALL26	gpio_request
    d028: 37f80360     	tbnz	w0, #0x1f, 0xd094 <syna_spi_get_gpio+0xb8>
    d02c: 2a1303e0     	mov	w0, w19
    d030: 94000000     	bl	0xd030 <syna_spi_get_gpio+0x54>
		000000000000d030:  R_AARCH64_CALL26	gpio_to_desc
    d034: 34000155     	cbz	w21, 0xd05c <syna_spi_get_gpio+0x80>
    d038: 2a1403e1     	mov	w1, w20
    d03c: 94000000     	bl	0xd03c <syna_spi_get_gpio+0x60>
		000000000000d03c:  R_AARCH64_CALL26	gpiod_direction_output_raw
    d040: 37f80120     	tbnz	w0, #0x1f, 0xd064 <syna_spi_get_gpio+0x88>
    d044: 2a1f03e0     	mov	w0, wzr
    d048: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    d04c: a94157f6     	ldp	x22, x21, [sp, #0x10]
    d050: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    d054: d50323bf     	autiasp
    d058: d65f03c0     	ret
    d05c: 94000000     	bl	0xd05c <syna_spi_get_gpio+0x80>
		000000000000d05c:  R_AARCH64_CALL26	gpiod_direction_input
    d060: 36ffff20     	tbz	w0, #0x1f, 0xd044 <syna_spi_get_gpio+0x68>
    d064: 90000008     	adrp	x8, 0xd000 <syna_spi_get_gpio+0x24>
		000000000000d064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1adca
    d068: 91000108     	add	x8, x8, #0x0
		000000000000d068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1adca
    d06c: 1400000c     	b	0xd09c <syna_spi_get_gpio+0xc0>
    d070: 90000008     	adrp	x8, 0xd000 <syna_spi_get_gpio+0x24>
		000000000000d070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6c8
    d074: 91000108     	add	x8, x8, #0x0
		000000000000d074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6c8
    d078: 90000001     	adrp	x1, 0xd000 <syna_spi_get_gpio+0x24>
		000000000000d078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18072
    d07c: 91000021     	add	x1, x1, #0x0
		000000000000d07c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18072
    d080: 2a0003f3     	mov	w19, w0
    d084: aa0803e0     	mov	x0, x8
    d088: 94000000     	bl	0xd088 <syna_spi_get_gpio+0xac>
		000000000000d088:  R_AARCH64_CALL26	_printk
    d08c: 2a1303e0     	mov	w0, w19
    d090: 17ffffee     	b	0xd048 <syna_spi_get_gpio+0x6c>
    d094: 90000008     	adrp	x8, 0xd000 <syna_spi_get_gpio+0x24>
		000000000000d094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cfe4
    d098: 91000108     	add	x8, x8, #0x0
		000000000000d098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cfe4
    d09c: 90000001     	adrp	x1, 0xd000 <syna_spi_get_gpio+0x24>
		000000000000d09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18072
    d0a0: 91000021     	add	x1, x1, #0x0
		000000000000d0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18072
    d0a4: 2a0003f4     	mov	w20, w0
    d0a8: aa0803e0     	mov	x0, x8
    d0ac: 2a1303e2     	mov	w2, w19
    d0b0: 94000000     	bl	0xd0b0 <syna_spi_get_gpio+0xd4>
		000000000000d0b0:  R_AARCH64_CALL26	_printk
    d0b4: 2a1403e0     	mov	w0, w20
    d0b8: 17ffffe4     	b	0xd048 <syna_spi_get_gpio+0x6c>
