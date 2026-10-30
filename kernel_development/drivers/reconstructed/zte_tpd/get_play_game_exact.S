/* Mechanically lifted from stock get_play_game@0x0010bc14. */
.text
.align 2
.globl get_play_game
.type get_play_game, %function
.word 0xf4e9d97c
get_play_game:
.Lget_play_game_000:
  paciasp
.Lget_play_game_004:
  sub sp, sp, #0x50
.Lget_play_game_008:
  stp x29, x30, [sp, #0x20]
.Lget_play_game_00c:
  stp x22, x21, [sp, #0x30]
.Lget_play_game_010:
  stp x20, x19, [sp, #0x40]
.Lget_play_game_014:
  add x29, sp, #0x20
.Lget_play_game_018:
  mrs x8, SP_EL0
.Lget_play_game_01c:
  mov x0, xzr
.Lget_play_game_020:
  ldr x8, [x8, #0x710]
.Lget_play_game_024:
  stur x8, [x29, #-0x8]
.Lget_play_game_028:
  ldr x8, [x3]
.Lget_play_game_02c:
  strh wzr, [sp, #0x10]
.Lget_play_game_030:
  str xzr, [sp, #0x8]
.Lget_play_game_034:
  cbz x8, .Lget_play_game_064
.Lget_play_game_038:
  mrs x8, SP_EL0
.Lget_play_game_03c:
  ldr x8, [x8, #0x710]
.Lget_play_game_040:
  ldur x9, [x29, #-0x8]
.Lget_play_game_044:
  cmp x8, x9
.Lget_play_game_048:
  b.ne .Lget_play_game_0ec
.Lget_play_game_04c:
  ldp x20, x19, [sp, #0x40]
.Lget_play_game_050:
  ldp x22, x21, [sp, #0x30]
.Lget_play_game_054:
  ldp x29, x30, [sp, #0x20]
.Lget_play_game_058:
  add sp, sp, #0x50
.Lget_play_game_05c:
  autiasp
.Lget_play_game_060:
  ret
.Lget_play_game_064:
  adrp x8, tpd_cdev
.Lget_play_game_068:
  mov x21, x1
.Lget_play_game_06c:
  mov x20, x2
.Lget_play_game_070:
  ldr x22, [x8, :lo12:tpd_cdev]
.Lget_play_game_074:
  mov x19, x3
.Lget_play_game_078:
  ldr x8, [x22, #0xf00]
.Lget_play_game_07c:
  cbz x8, .Lget_play_game_0a0
.Lget_play_game_080:
  mov x0, x22
.Lget_play_game_084:
  ldur w16, [x8, #-0x4]
.Lget_play_game_088:
  movk w17, #0xd79
.Lget_play_game_08c:
  movk w17, #0x73fc, lsl #16
.Lget_play_game_090:
  cmp w16, w17
.Lget_play_game_094:
  b.eq .Lget_play_game_09c
.Lget_play_game_098:
  brk #0x8228
.Lget_play_game_09c:
  blr x8
.Lget_play_game_0a0:
  ldr w2, [x22, #0x45c]
.Lget_play_game_0a4:
  adrp x0, .Lget_play_game_str_tpd
.Lget_play_game_0a8:
  add x0, x0, :lo12:.Lget_play_game_str_tpd
.Lget_play_game_0ac:
  adrp x1, .Lget_play_game_str_name
.Lget_play_game_0b0:
  add x1, x1, :lo12:.Lget_play_game_str_name
.Lget_play_game_0b4:
  bl _printk
.Lget_play_game_0b8:
  ldr w3, [x22, #0x45c]
.Lget_play_game_0bc:
  adrp x2, .Lget_play_game_str_format
.Lget_play_game_0c0:
  add x2, x2, :lo12:.Lget_play_game_str_format
.Lget_play_game_0c4:
  add x0, sp, #0x8
.Lget_play_game_0c8:
  mov w1, #0xa
.Lget_play_game_0cc:
  bl snprintf
.Lget_play_game_0d0:
  sxtw x4, w0
.Lget_play_game_0d4:
  add x3, sp, #0x8
.Lget_play_game_0d8:
  mov x1, x20
.Lget_play_game_0dc:
  mov x0, x21
.Lget_play_game_0e0:
  mov x2, x19
.Lget_play_game_0e4:
  bl simple_read_from_buffer
.Lget_play_game_0e8:
  b .Lget_play_game_038
.Lget_play_game_0ec:
  bl __stack_chk_fail
.Lget_play_game_end:
.size get_play_game, .Lget_play_game_end - get_play_game

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lget_play_game_str_tpd:
  .string "\0015tpd: %s val:%d.\n"
.Lget_play_game_str_name:
  .string "get_play_game"
.Lget_play_game_str_format:
  .string "%u\n"
.popsection
.section .note.GNU-stack,"",@progbits
