
void aw22xxx_set_cfg_run_state(ulong param_1)

{
  uint uVar1;
  int iVar2;
  ulong uVar3;
  
  uVar3 = param_1 >> 0x18 & 0xff;
  _printk(&DAT_0010d6c5,"aw22xxx_set_cfg_run_state",0x74d,uVar3);
  uVar1 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_0010cfd0,"aw22xxx_set_cfg_run_state",0x74f,uVar1);
  _printk(&DAT_0010e709,"aw22xxx_set_cfg_run_state",0x751,(uint)param_1 & 0xfff);
  iVar2 = (int)uVar3;
  if ((iVar2 == 1) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0xfffffffd;
  }
  else if ((iVar2 == 3) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0xfffffffe;
  }
  else if ((iVar2 == 3) && (uVar1 == 2)) {
    g_cfg_cur_state = g_cfg_cur_state | 1;
  }
  else if ((iVar2 == 2) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0xfffffffb;
  }
  else if ((iVar2 == 2) && (uVar1 - 0x101 < 4)) {
    g_cfg_cur_state = g_cfg_cur_state | 4;
  }
  else {
    uVar1 = 1;
    if (iVar2 != 3) {
      uVar1 = 2;
    }
    g_cfg_cur_state = g_cfg_cur_state | uVar1;
  }
  return;
}

