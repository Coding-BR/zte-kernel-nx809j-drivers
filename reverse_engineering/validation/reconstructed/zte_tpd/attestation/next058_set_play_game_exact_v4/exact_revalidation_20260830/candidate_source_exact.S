/* Mechanically lifted from stock set_play_game@0x0010bd08. */
.text
.align 2
.globl set_play_game
.type set_play_game, %function
.word 0xc3d43b4d
set_play_game:
.Lset_play_game_000:
  paciasp
.Lset_play_game_004:
  sub sp, sp, #0x30
.Lset_play_game_008:
  stp x29, x30, [sp, #0x10]
.Lset_play_game_00c:
  stp x20, x19, [sp, #0x20]
.Lset_play_game_010:
  add x29, sp, #0x10
.Lset_play_game_014:
  mrs x8, SP_EL0
.Lset_play_game_018:
  mov x19, x2
.Lset_play_game_01c:
  mov x0, x1
.Lset_play_game_020:
  ldr x8, [x8, #0x710]
.Lset_play_game_024:
  add x3, sp, #0x4
.Lset_play_game_028:
  mov x1, x2
.Lset_play_game_02c:
  mov w2, #0xa
.Lset_play_game_030:
  str x8, [sp, #0x8]
.Lset_play_game_034:
  adrp x8, tpd_cdev
.Lset_play_game_038:
  ldr x20, [x8, :lo12:tpd_cdev]
.Lset_play_game_03c:
  str wzr, [sp, #0x4]
.Lset_play_game_040:
  bl kstrtouint_from_user
.Lset_play_game_044:
  cbz w0, .Lset_play_game_078
.Lset_play_game_048:
  mov x19, #-0x16
.Lset_play_game_04c:
  mrs x8, SP_EL0
.Lset_play_game_050:
  ldr x8, [x8, #0x710]
.Lset_play_game_054:
  ldr x9, [sp, #0x8]
.Lset_play_game_058:
  cmp x8, x9
.Lset_play_game_05c:
  b.ne .Lset_play_game_0c0
.Lset_play_game_060:
  mov x0, x19
.Lset_play_game_064:
  ldp x20, x19, [sp, #0x20]
.Lset_play_game_068:
  ldp x29, x30, [sp, #0x10]
.Lset_play_game_06c:
  add sp, sp, #0x30
.Lset_play_game_070:
  autiasp
.Lset_play_game_074:
  ret
.Lset_play_game_078:
  ldr w2, [sp, #0x4]
.Lset_play_game_07c:
  adrp x0, .Lset_play_game_str_tpd
.Lset_play_game_080:
  add x0, x0, :lo12:.Lset_play_game_str_tpd
.Lset_play_game_084:
  adrp x1, .Lset_play_game_str_name
.Lset_play_game_088:
  add x1, x1, :lo12:.Lset_play_game_str_name
.Lset_play_game_08c:
  bl _printk
.Lset_play_game_090:
  ldr x8, [x20, #0xf08]
.Lset_play_game_094:
  cbz x8, .Lset_play_game_04c
.Lset_play_game_098:
  ldr w1, [sp, #0x4]
.Lset_play_game_09c:
  mov x0, x20
.Lset_play_game_0a0:
  ldur w16, [x8, #-0x4]
.Lset_play_game_0a4:
  movk w17, #0xb499
.Lset_play_game_0a8:
  movk w17, #0x6af8, lsl #16
.Lset_play_game_0ac:
  cmp w16, w17
.Lset_play_game_0b0:
  b.eq .Lset_play_game_0b8
.Lset_play_game_0b4:
  brk #0x8228
.Lset_play_game_0b8:
  blr x8
.Lset_play_game_0bc:
  b .Lset_play_game_04c
.Lset_play_game_0c0:
  bl __stack_chk_fail
.Lset_play_game_end:
.size set_play_game, .Lset_play_game_end - set_play_game

.pushsection .rodata.str1.1,"aMS",@progbits,1
.Lset_play_game_str_tpd:
  .string "\0015tpd: %s val = %d\n"
.Lset_play_game_str_name:
  .string "set_play_game"
.popsection
.section .note.GNU-stack,"",@progbits
