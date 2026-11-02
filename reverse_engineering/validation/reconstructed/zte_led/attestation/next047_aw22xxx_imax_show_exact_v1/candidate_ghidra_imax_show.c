
long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  
  lVar4 = *(long *)(param_1 + 0x98);
  iVar3 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,s_AW22XXX_IMAX_2mA_001004f8);
  lVar5 = (long)iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",1,s_AW22XXX_IMAX_3mA_00100518);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",2,s_AW22XXX_IMAX_4mA_00100538);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",3,s_AW22XXX_IMAX_6mA_00100558);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",4,s_AW22XXX_IMAX_9mA_00100578);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",5,s_AW22XXX_IMAX_10mA_00100598);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",6,s_AW22XXX_IMAX_15mA_001005b8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",7,s_AW22XXX_IMAX_20mA_001005d8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",8,s_AW22XXX_IMAX_30mA_001005f8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",9,s_AW22XXX_IMAX_40mA_00100618);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",10,s_AW22XXX_IMAX_45mA_00100638)
  ;
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xb,s_AW22XXX_IMAX_60mA_00100658
                  );
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xc,s_AW22XXX_IMAX_75mA_00100678
                  );
  uVar1 = *(uint *)(lVar4 + 0x2e0);
  if (uVar1 < 0xe) {
    lVar5 = lVar5 + iVar3;
    iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     s_AW22XXX_IMAX_2mA_001004f8 + (ulong)uVar1 * 0x20);
    return lVar5 + iVar3;
  }
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x104390);
  (*pcVar2)();
}

