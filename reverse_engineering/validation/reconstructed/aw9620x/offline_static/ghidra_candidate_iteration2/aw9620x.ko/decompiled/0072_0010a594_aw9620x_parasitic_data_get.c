
long aw9620x_parasitic_data_get(long param_1,undefined8 param_2,long param_3)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  uint local_6c;
  long local_68;
  
  lVar8 = sp_el0;
  lVar5 = 0;
  local_68 = *(long *)(lVar8 + 0x710);
  uVar6 = 0;
  iVar7 = 0x1a48;
  lVar8 = *(long *)(param_1 + 0x98);
  local_6c = 0;
  do {
    aw9620x_i2c_read(lVar8 + -0x38,iVar7,&local_6c);
    uVar1 = local_6c;
    _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar8 + -8),"[%s:%d] ch%d addr:0x%08x val=0x%08x\n",
                "aw9620x_parasitic_data_get",0xf81,uVar6,iVar7,local_6c);
    bVar2 = (uVar1 & 0x400) != 0;
    iVar3 = 0x26ac;
    if (bVar2) {
      iVar3 = 0x4d58;
    }
    iVar4 = 0xa5;
    if (bVar2) {
      iVar4 = 0x14a;
    }
    uVar1 = (uVar1 >> 0x18) * iVar3 + (uVar1 >> 0x10 & 0xff) * iVar4;
    iVar3 = snprintf((char *)(param_3 + lVar5),0x1000 - lVar5,"ch%u parasitic_data %u.%u pf\n",
                     (ulong)uVar6,(ulong)uVar1 / 10000,(ulong)(uVar1 % 10000));
    uVar6 = uVar6 + 1;
    lVar5 = lVar5 + iVar3;
    iVar7 = iVar7 + 0x54;
  } while (uVar6 != 8);
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_68) {
    return lVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

