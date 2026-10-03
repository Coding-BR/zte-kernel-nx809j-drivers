
/* WARNING: Control flow encountered bad instruction data */

void FUN_00102a40(void)

{
  undefined1 auVar1 [32];
  undefined1 in_z1 [32];
  undefined1 in_z6 [32];
  undefined1 in_z14 [32];
  undefined1 in_q15 [16];
  undefined1 in_z16 [32];
  undefined1 in_z23 [32];
  undefined1 in_q27 [16];
  undefined1 in_register_00005370 [16];
  undefined4 in_p3;
  
  auVar1._16_16_ = in_register_00005370;
  auVar1._0_16_ = in_q27;
  SVE_fnmls(in_z16,in_p3,auVar1,in_z23);
  NEON_uqrshl(in_q27,in_q15,2);
  SVE_fmul(in_z14,in_z1,in_z6,6);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

