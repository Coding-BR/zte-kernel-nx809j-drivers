
void aw22xxx_cfg_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(byte *)(lVar2 + 0x2f4) = (byte)local_2c & 0xf;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0010687e,"aw22xxx_cfg_store",0x7f6);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010742b,"aw22xxx_cfg_store",0x7f0);
}

