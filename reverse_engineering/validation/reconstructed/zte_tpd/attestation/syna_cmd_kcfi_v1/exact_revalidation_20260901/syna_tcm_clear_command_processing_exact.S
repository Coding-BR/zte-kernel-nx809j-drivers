.section .text,"ax",@progbits
.align 2
.global syna_tcm_clear_command_processing
.type syna_tcm_clear_command_processing, %function
.word 0x9b7e2760
syna_tcm_clear_command_processing:
    .inst 0xb40001e0
    .inst 0xf941d008
    .inst 0xb40001a8
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xb85fc110
    .inst 0x7284ec11
    .inst 0x72b36fd1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_tcm_clear_command_processing, .-syna_tcm_clear_command_processing
