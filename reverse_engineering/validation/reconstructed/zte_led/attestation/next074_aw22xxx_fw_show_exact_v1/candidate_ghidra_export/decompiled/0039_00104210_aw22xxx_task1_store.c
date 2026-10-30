
void aw22xxx_task1_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ed) = (char)local_2c;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001062f1,"aw22xxx_task1_store",0x911,local_2c & 0xff);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001063f3,"aw22xxx_task1_store",0x90c);
}

