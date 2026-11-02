
long aw9620x_chip_info_get(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  uint local_4c;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_4c = 0;
  lVar2 = lVar3 + -0x38;
  iVar1 = snprintf(param_3,0x1000,"sar%u , driver version %s\n",(ulong)*(uint *)(lVar3 + -0x30),
                   "v0.3.0");
  lVar4 = (long)iVar1;
  aw9620x_i2c_read(lVar2,0xff00,&local_4c);
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"chipid is 0x%08x\n",(ulong)local_4c);
  lVar4 = lVar4 + iVar1;
  aw9620x_i2c_read(lVar2,0x1a10,lVar3 + 0x250);
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"chip firmware ver is 0x%08x\n",
                   (ulong)*(uint *)(lVar3 + 0x250));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"bin  firmware ver is 0x%08x\n",
                   (ulong)*(uint *)(lVar3 + 0x24c));
  lVar4 = lVar4 + iVar1;
  aw9620x_i2c_read(lVar2,0x4414,&local_4c);
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"REG_HOSTIRQEN is 0x%08x\n",(ulong)local_4c);
  lVar4 = lVar4 + iVar1;
  if (*(char *)(lVar3 + -0x34) == '\x01') {
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,
                     "Error updating register bin file, update with default array\n");
    lVar4 = lVar4 + iVar1;
  }
  if (*(char *)(lVar3 + 0x248) == '\x01') {
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,
                     "boot ver is 0x%08x, date is 0x%08x, checksum is 0x%08x\n",
                     (ulong)*(uint *)(lVar3 + 600),(ulong)*(uint *)(lVar3 + 0x25c),
                     (ulong)*(uint *)(lVar3 + 0x260));
    lVar4 = lVar4 + iVar1;
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"fw checksum is 0x%08x\n",
                     (ulong)*(uint *)(lVar3 + 0x254));
    lVar4 = lVar4 + iVar1;
  }
  if (*(int *)(lVar3 + 0x264) != 0) {
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"boot bin ver is 0x%08x\n");
    lVar4 = lVar4 + iVar1;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

