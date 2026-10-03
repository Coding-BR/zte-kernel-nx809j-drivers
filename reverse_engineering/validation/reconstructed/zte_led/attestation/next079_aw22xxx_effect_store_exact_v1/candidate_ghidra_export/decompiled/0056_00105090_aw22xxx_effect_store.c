
void aw22xxx_effect_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_54 [3];
  undefined8 local_48;
  
  lVar2 = sp_el0;
  local_48 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_54[0] = 0;
  iVar1 = sscanf(param_3,"%x",local_54);
  if (iVar1 != 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00106718,"aw22xxx_effect_store",0x850);
  }
  mutex_lock(lVar2 + 0x2a0);
  if ((local_54[0] - 8 < 3) && (init_flag == 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001067e0,"aw22xxx_effect_store",0x857);
  }
  *(uint *)(lVar2 + 0x2f0) = local_54[0];
  if ((local_54[0] < 4) && ((local_54[0] != 1 && ((init_flag & 1) == 0)))) {
    init_flag = 1;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00107250,"aw22xxx_effect_store",0x869);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00107b52,"aw22xxx_effect_store",0x86c);
}

