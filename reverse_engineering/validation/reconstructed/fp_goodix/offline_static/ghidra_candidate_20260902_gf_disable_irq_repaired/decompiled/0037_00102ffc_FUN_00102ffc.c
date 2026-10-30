
/* WARNING: Control flow encountered bad instruction data */

void FUN_00102ffc(void)

{
  undefined1 in_z1 [32];
  undefined1 in_z12 [32];
  undefined1 in_z13 [32];
  undefined1 in_z14 [32];
  undefined1 in_z18 [32];
  undefined1 in_z22 [32];
  undefined1 in_z26 [32];
  undefined1 in_z27 [32];
  undefined1 in_z31 [32];
  undefined4 in_p0;
  undefined4 in_p3;
  
  SVE_fnmls(in_z31,in_p0,in_z26,in_z12);
  SVE_fmls(in_z14,in_p0,in_z1,in_z18);
  SVE_fnmls(in_z13,in_p3,in_z27,in_z22);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

