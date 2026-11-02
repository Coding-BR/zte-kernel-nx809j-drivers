
void aw86320_play_atsin0(uint param_1,uint param_2,uint param_3)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  
  param_2 = param_2 & 0xffff;
  _printk(&DAT_00103c4b,"aw86320",0x236,"aw86320_play_atsin0",param_1 & 0xffff,param_2,
          param_3 & 0xffff);
  if (((param_2 < 0x5b) && ((param_1 & 0xffff) != 0)) && ((param_3 & 0xffff) < 0x1f5)) {
    piVar1 = (int *)(g_aw86320 + 0x34c);
    piVar2 = (int *)(g_aw86320 + 0x348);
    *(undefined4 *)(g_aw86320 + 0x10) = 1;
    uVar5 = (ulong)(param_2 * 0x35ff94) / 0x2800;
    uVar3 = 0x2bff;
    if ((param_1 & 0xffff) < 0x3ff) {
      uVar3 = param_1 | 0x2800;
    }
    param_3 = *piVar1 << 0xc | *piVar2 << 0xe | param_3;
    _printk(&DAT_001042e6,"aw86320",0x24c,"aw86320_play_atsin0",uVar3 & 0xffff,uVar5,
            param_3 & 0xffff);
    lVar4 = g_aw86320;
    _printk(&DAT_00103e43,"aw86320",0x129,"aw86320_play_mode");
    if (*(char *)(lVar4 + 0x346) == '\x01') {
      *(undefined1 *)(lVar4 + 1) = 1;
    }
    if (*(char *)(lVar4 + 0x345) == '\x01') {
      *(undefined1 *)(lVar4 + 1) = 2;
    }
    if (*(char *)(g_aw86320 + 1) == '\x01') {
      _printk(&DAT_00103d90,"aw86320",0x250,"aw86320_play_atsin0",1);
      aw86320_play_stop(g_aw86320);
      if (*(int *)(g_aw86320 + 0x10) == 1) {
        _printk(&DAT_00104680,"aw86320",0x253,"aw86320_play_atsin0");
        aw86320_timecheck_work_init(g_aw86320);
        haptic_i2c_write(g_aw86320,0x25,0);
        haptic_i2c_write(g_aw86320,0x23,uVar5);
        haptic_i2c_write(g_aw86320,0x24,param_3);
        haptic_i2c_write(g_aw86320,0x25,uVar3);
      }
    }
  }
  return;
}

