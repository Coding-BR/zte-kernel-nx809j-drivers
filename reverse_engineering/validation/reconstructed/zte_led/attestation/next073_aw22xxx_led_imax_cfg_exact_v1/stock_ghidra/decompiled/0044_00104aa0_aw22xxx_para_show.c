
long aw22xxx_para_show(undefined8 param_1,undefined8 param_2,long param_3)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  
  if (write_idx == 0) {
    lVar3 = 0;
  }
  else {
    uVar4 = 0;
    lVar3 = 0;
    do {
      if (((uint)uVar4 & 0xffff) * -0x3d70a3d7 < 0xa3d70a4) {
        iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
        if (0xc34 < uVar4 >> 3) {
LAB_00104bb8:
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x104bbc);
          (*pcVar1)();
        }
        lVar3 = lVar3 + iVar2;
      }
      else if (0xc34 < uVar4 >> 3) goto LAB_00104bb8;
      iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"%d  ",
                       (ulong)(byte)(&user_para_data)[uVar4]);
      uVar4 = uVar4 + 1;
      lVar3 = lVar3 + iVar2;
    } while (uVar4 < (uint)(write_idx * 0x19));
    iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
    lVar3 = lVar3 + iVar2;
  }
  return lVar3;
}

