	.text
	.file	"syna_tcm_parse_fw_image_aarch64_assembly_input.c"
	.globl	syna_tcm_parse_fw_image         // -- Begin function syna_tcm_parse_fw_image
	.p2align	2
	.type	syna_tcm_parse_fw_image,@function
syna_tcm_parse_fw_image:                // @syna_tcm_parse_fw_image
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	.cfi_remember_state
	cbz	x0, .LBB0_27
// %bb.1:
	cbz	x2, .LBB0_28
// %bb.2:
	cbz	w1, .LBB0_29
// %bb.3:
	mov	x20, x0
	add	x0, x2, #4
	mov	w19, w1
	mov	w1, wzr
	mov	x21, x2
	mov	w2, #780                        // =0x30c
	bl	memset
	str	w19, [x21]
	mov	w9, #18219                      // =0x472b
	ldr	w8, [x20]
	movk	w9, #18456, lsl #16
	str	x20, [x21, #8]
	cmp	w8, w9
	b.ne	.LBB0_30
// %bb.4:
	ldr	w19, [x20, #4]
	cbz	w19, .LBB0_33
// %bb.5:
	mov	x10, x21
	mov	w26, #49624                     // =0xc1d8
	mov	x23, xzr
	adrp	x24, .L.str.5
	add	x24, x24, :lo12:.L.str.5
	adrp	x22, reltable.syna_tcm_parse_fw_image
	add	x22, x22, :lo12:reltable.syna_tcm_parse_fw_image
	adrp	x27, partition_name_lengths
	add	x27, x27, :lo12:partition_name_lengths
	add	x21, x20, #8
	add	x8, x10, #656
	movk	w26, #49659, lsl #16
	stp	x10, x8, [sp, #16]              // 16-byte Folded Spill
	stp	x21, x19, [x29, #-16]           // 16-byte Folded Spill
	b	.LBB0_11
.LBB0_6:                                //   in Loop: Header=BB0_11 Depth=1
	ldr	w25, [x28, #4]
	ldr	x24, [sp, #24]                  // 8-byte Folded Reload
	add	x26, x28, #8
.LBB0_7:                                //   in Loop: Header=BB0_11 Depth=1
	mov	w8, #1                          // =0x1
	mov	w28, #20                        // =0x14
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	mov	w2, w25
	strb	w8, [x24]
	str	x26, [x24, #8]
	stp	w25, wzr, [x24, #16]
	strb	w28, [x24, #24]
	bl	zte_tpd_aarch64_printk
.LBB0_8:                                //   in Loop: Header=BB0_11 Depth=1
	ldr	x3, [x24, #8]
	ldr	w4, [x24, #16]
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, w28
	bl	zte_tpd_aarch64_printk
.LBB0_9:                                //   in Loop: Header=BB0_11 Depth=1
	adrp	x24, .L.str.5
	add	x24, x24, :lo12:.L.str.5
	mov	w26, #49624                     // =0xc1d8
	movk	w26, #49659, lsl #16
.LBB0_10:                               //   in Loop: Header=BB0_11 Depth=1
	add	x23, x23, #1
	cmp	x23, x19
	b.eq	.LBB0_33
.LBB0_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_14 Depth 2
	lsl	w8, w23, #2
	ldr	w8, [x21, w8, uxtw]
	add	x28, x20, x8
	ldr	w8, [x28]
	cmp	w8, w26
	b.eq	.LBB0_6
// %bb.12:                              //   in Loop: Header=BB0_11 Depth=1
	mov	w9, #58646                      // =0xe516
	movk	w9, #31749, lsl #16
	cmp	w8, w9
	b.ne	.LBB0_10
// %bb.13:                              //   in Loop: Header=BB0_11 Depth=1
	mov	x19, xzr
	mov	w8, #22                         // =0x16
.LBB0_14:                               //   Parent Loop BB0_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	mov	w21, w8
	tbnz	w8, #31, .LBB0_16
// %bb.15:                              //   in Loop: Header=BB0_14 Depth=2
	ldrsw	x8, [x22, w21, uxtw #2]
	ldrb	w1, [x27, w21, uxtw]
	add	x25, x22, x8
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_14 Depth=2
	mov	x25, x24
	mov	w1, #2                          // =0x2
.LBB0_17:                               //   in Loop: Header=BB0_14 Depth=2
	mov	x0, x25
	bl	strnlen
	mov	x2, x0
	add	x0, x28, #4
	mov	x1, x25
	bl	strncmp
	cbz	w0, .LBB0_20
// %bb.18:                              //   in Loop: Header=BB0_14 Depth=2
	sub	w8, w21, #1
	sub	x19, x19, #32
	tbz	w21, #31, .LBB0_14
// %bb.19:                              //   in Loop: Header=BB0_11 Depth=1
	add	x2, x28, #4
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	zte_tpd_aarch64_printk
	ldp	x21, x19, [x29, #-16]           // 16-byte Folded Reload
	b	.LBB0_10
.LBB0_20:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w25, [x28, #28]
	cmn	w19, #96
	add	x26, x28, #36
	add	x8, x8, x19
	add	x24, x8, #752
	b.ne	.LBB0_22
// %bb.21:                              //   in Loop: Header=BB0_11 Depth=1
	ldp	x21, x19, [x29, #-16]           // 16-byte Folded Reload
	b	.LBB0_7
.LBB0_22:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [x28, #32]
	mov	w0, #-1                         // =0xffffffff
	mov	x1, x26
	mov	x2, x25
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	crc32_le
	cmp	w21, #22
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	b.hi	.LBB0_24
// %bb.23:                              //   in Loop: Header=BB0_11 Depth=1
	adrp	x9, reltable.syna_tcm_parse_fw_image.36
	add	x9, x9, :lo12:reltable.syna_tcm_parse_fw_image.36
	ldrsw	x8, [x9, w21, uxtw #2]
	add	x2, x9, x8
.LBB0_24:                               //   in Loop: Header=BB0_11 Depth=1
	ldr	w11, [sp, #12]                  // 4-byte Folded Reload
	mvn	w4, w0
	cmp	w11, w4
	b.ne	.LBB0_26
// %bb.25:                              //   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	mov	w10, #1                         // =0x1
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	add	x8, x8, x19
	mov	w5, w25
	strb	w10, [x24]
	str	w25, [x8, #768]
	ldr	w9, [x28, #24]
	add	w28, w21, #1
	str	x26, [x8, #760]
	strb	w28, [x8, #776]
	lsl	w3, w9, #1
	str	w11, [x8, #780]
	mov	w4, w3
	str	w3, [x8, #772]
	bl	zte_tpd_aarch64_printk
	ldp	x21, x19, [x29, #-16]           // 16-byte Folded Reload
	b	.LBB0_8
.LBB0_26:                               //   in Loop: Header=BB0_11 Depth=1
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	mov	w3, w11
	bl	zte_tpd_aarch64_printk
	ldp	x21, x19, [x29, #-16]           // 16-byte Folded Reload
	b	.LBB0_9
.LBB0_27:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_31
.LBB0_28:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	b	.LBB0_31
.LBB0_29:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	b	.LBB0_31
.LBB0_30:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
.LBB0_31:
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	zte_tpd_aarch64_printk
	mov	w0, #-241                       // =0xffffff0f
.LBB0_32:
	.cfi_def_cfa wsp, 144
	ldp	x20, x19, [sp, #128]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.LBB0_33:
	.cfi_restore_state
	mov	w0, wzr
	b	.LBB0_32
.Lfunc_end0:
	.size	syna_tcm_parse_fw_image, .Lfunc_end0-syna_tcm_parse_fw_image
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Invalid given data\n"
	.size	.L.str, 24

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syna_tcm_parse_fw_image"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s: Invalid image blob to store the parsed data\n"
	.size	.L.str.2, 49

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"%s: Invalid image data\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%s: Invalid image file magic value\n"
	.size	.L.str.4, 36

	.type	reltable.syna_tcm_parse_fw_image,@object // @reltable.syna_tcm_parse_fw_image
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
reltable.syna_tcm_parse_fw_image:
	.word	.L.str.13-reltable.syna_tcm_parse_fw_image
	.word	.L.str.14-reltable.syna_tcm_parse_fw_image
	.word	.L.str.15-reltable.syna_tcm_parse_fw_image
	.word	.L.str.16-reltable.syna_tcm_parse_fw_image
	.word	.L.str.17-reltable.syna_tcm_parse_fw_image
	.word	.L.str.18-reltable.syna_tcm_parse_fw_image
	.word	.L.str.19-reltable.syna_tcm_parse_fw_image
	.word	.L.str.20-reltable.syna_tcm_parse_fw_image
	.word	.L.str.21-reltable.syna_tcm_parse_fw_image
	.word	.L.str.22-reltable.syna_tcm_parse_fw_image
	.word	.L.str.23-reltable.syna_tcm_parse_fw_image
	.word	.L.str.24-reltable.syna_tcm_parse_fw_image
	.word	.L.str.25-reltable.syna_tcm_parse_fw_image
	.word	.L.str.26-reltable.syna_tcm_parse_fw_image
	.word	.L.str.27-reltable.syna_tcm_parse_fw_image
	.word	.L.str.28-reltable.syna_tcm_parse_fw_image
	.word	.L.str.29-reltable.syna_tcm_parse_fw_image
	.word	.L.str.30-reltable.syna_tcm_parse_fw_image
	.word	.L.str.31-reltable.syna_tcm_parse_fw_image
	.word	.L.str.32-reltable.syna_tcm_parse_fw_image
	.word	.L.str.33-reltable.syna_tcm_parse_fw_image
	.word	.L.str.34-reltable.syna_tcm_parse_fw_image
	.word	.L.str.35-reltable.syna_tcm_parse_fw_image
	.size	reltable.syna_tcm_parse_fw_image, 92

	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	" "
	.size	.L.str.5, 2

	.type	partition_name_lengths,@object  // @partition_name_lengths
	.section	.rodata,"a",@progbits
partition_name_lengths:
	.ascii	"\t\017\013\b\n\f\016\r\006\006\021\004\007\004\013\004\005\021\021\021\017\025\020"
	.size	partition_name_lengths, 23

	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%s: Un-defined area string, %s\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"syna_tcm_get_partition_id"
	.size	.L.str.7, 26

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%s: AREA_TOOL_JSON area - size:%d\n"
	.size	.L.str.8, 35

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"syna_tcm_save_flash_partition_data"
	.size	.L.str.9, 35

	.type	reltable.syna_tcm_parse_fw_image.36,@object // @reltable.syna_tcm_parse_fw_image.36
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
reltable.syna_tcm_parse_fw_image.36:
	.word	.L.str.13-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.14-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.15-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.16-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.17-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.18-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.19-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.20-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.21-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.22-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.23-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.24-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.25-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.26-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.27-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.28-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.29-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.30-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.31-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.5-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.33-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.34-reltable.syna_tcm_parse_fw_image.36
	.word	.L.str.35-reltable.syna_tcm_parse_fw_image.36
	.size	reltable.syna_tcm_parse_fw_image.36, 92

	.type	.L.str.10,@object               // @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%s: partition %s checksum error, image file: 0x%x (0x%x)\n"
	.size	.L.str.10, 58

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"%s: %s area - address:0x%08x (%d), size:%d\n"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"%s: debug area:%d, address:%px size:%d\n"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"APP_CODE"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"APP_CODE_COPRO"
	.size	.L.str.14, 15

	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"APP_CONFIG"
	.size	.L.str.15, 11

	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"DISPLAY"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"BOOT_CODE"
	.size	.L.str.17, 10

	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"BOOT_CONFIG"
	.size	.L.str.18, 12

	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"APP_PROD_TEST"
	.size	.L.str.19, 14

	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"F35_APP_CODE"
	.size	.L.str.20, 13

	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"FORCE"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"GAMMA"
	.size	.L.str.22, 6

	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"TEMPERATURE_GAMM"
	.size	.L.str.23, 17

	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"LCM"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"LOOKUP"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"OEM"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"OPEN_SHORT"
	.size	.L.str.27, 11

	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"OTP"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               // @.str.29
.L.str.29:
	.asciz	"PPDT"
	.size	.L.str.29, 5

	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"ROMBOOT_APP_CODE"
	.size	.L.str.30, 17

	.type	.L.str.31,@object               // @.str.31
.L.str.31:
	.asciz	"TOOL_BOOT_CONFIG"
	.size	.L.str.31, 17

	.type	.L.str.32,@object               // @.str.32
.L.str.32:
	.asciz	"JSON_CONFIG_AREA"
	.size	.L.str.32, 17

	.type	.L.str.33,@object               // @.str.33
.L.str.33:
	.asciz	"CUSTOM_CS_AREA"
	.size	.L.str.33, 15

	.type	.L.str.34,@object               // @.str.34
.L.str.34:
	.asciz	"CUSTOM_LOCKDOWN_AREA"
	.size	.L.str.34, 21

	.type	.L.str.35,@object               // @.str.35
.L.str.35:
	.asciz	"CUSTOM_MTP_AREA"
	.size	.L.str.35, 16

	.ident	"Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460)"
	.section	".note.GNU-stack","",@progbits
