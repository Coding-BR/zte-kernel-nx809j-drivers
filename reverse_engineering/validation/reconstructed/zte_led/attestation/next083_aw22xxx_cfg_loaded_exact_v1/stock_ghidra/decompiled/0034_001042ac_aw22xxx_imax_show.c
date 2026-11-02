
long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  
  lVar4 = *(long *)(param_1 + 0x98);
  iVar3 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,aw22xxx_imax_name);
  lVar5 = (long)iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",1,s_AW22XXX_IMAX_3mA_00100558);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",2,s_AW22XXX_IMAX_4mA_00100578);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",3,s_AW22XXX_IMAX_6mA_00100598);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",4,s_AW22XXX_IMAX_9mA_001005b8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",5,s_AW22XXX_IMAX_10mA_001005d8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",6,s_AW22XXX_IMAX_15mA_001005f8);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",7,s_AW22XXX_IMAX_20mA_00100618);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",8,s_AW22XXX_IMAX_30mA_00100638);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",9,s_AW22XXX_IMAX_40mA_00100658);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",10,s_AW22XXX_IMAX_45mA_00100678)
  ;
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xb,&DAT_00100698);
  lVar5 = lVar5 + iVar3;
  iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"imax[%x] = %s\n",0xc,&DAT_001006b8);
  uVar1 = *(uint *)(lVar4 + 0x2e0);
  if (uVar1 < 0xe) {
    lVar5 = lVar5 + iVar3;
    iVar3 = snprintf(param_3 + lVar5,0x1000 - lVar5,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     aw22xxx_imax_name + (ulong)uVar1 * 0x20);
    return lVar5 + iVar3;
  }
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x104494);
  (*pcVar2)();
}

