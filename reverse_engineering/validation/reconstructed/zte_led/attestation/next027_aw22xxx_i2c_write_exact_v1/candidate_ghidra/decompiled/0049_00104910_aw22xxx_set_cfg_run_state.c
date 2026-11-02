
void aw22xxx_set_cfg_run_state(ulong param_1)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  ulong uVar4;
  
  uVar4 = param_1 >> 0x18 & 0xff;
  uVar1 = (uint)param_1 >> 0xc & 0xfff;
  _printk(&DAT_001090ed,"aw22xxx_set_cfg_run_state",uVar4);
  _printk(&DAT_0010895d,"aw22xxx_set_cfg_run_state",uVar1);
  _printk(&DAT_00108c33,"aw22xxx_set_cfg_run_state",param_1 & 0xffffffff);
  iVar3 = (int)uVar4;
  if ((iVar3 == 1) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7d;
  }
  else if ((iVar3 == 3) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7e;
  }
  else if ((iVar3 == 3) && (uVar1 == 2)) {
    g_cfg_cur_state = g_cfg_cur_state | 1;
  }
  else if ((iVar3 == 2) && (uVar1 == 0)) {
    g_cfg_cur_state = g_cfg_cur_state & 0x7b;
  }
  else if ((iVar3 == 2) && (uVar1 - 0x101 < 4)) {
    g_cfg_cur_state = g_cfg_cur_state | 4;
  }
  else {
    bVar2 = 1;
    if (iVar3 != 3) {
      bVar2 = 2;
    }
    g_cfg_cur_state = g_cfg_cur_state | bVar2;
  }
  return;
}

