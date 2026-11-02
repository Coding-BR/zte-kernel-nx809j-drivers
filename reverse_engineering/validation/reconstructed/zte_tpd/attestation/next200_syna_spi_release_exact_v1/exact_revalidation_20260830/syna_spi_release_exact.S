.section .text,"ax",@progbits
.align 2
.global syna_spi_release
.type syna_spi_release, %function
.word 0x6c81b8c8
syna_spi_release:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_release_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_release_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_spi_release_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_spi_release_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_spi_release, .-syna_spi_release

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_spi_release_fmt:
.asciz "\0016[info ] %s: SPI device removed\n"
.L_syna_spi_release_name:
.asciz "syna_spi_release"

.section .note.GNU-stack,"",@progbits
