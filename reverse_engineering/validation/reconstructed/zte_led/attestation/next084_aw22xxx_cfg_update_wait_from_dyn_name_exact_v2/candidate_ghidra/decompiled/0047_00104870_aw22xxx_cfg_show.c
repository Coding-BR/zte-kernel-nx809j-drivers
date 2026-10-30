
size_t aw22xxx_cfg_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  size_t sVar2;
  
  uVar1 = *(uint *)(*(long *)(param_1 + 0x98) + 0x2f0);
  if (uVar1 < 0xb) {
    uVar1 = snprintf(param_3,0x1000,"current cfg = %s\n",
                     *(undefined8 *)(aw22xxx_cfg_name + (ulong)uVar1 * 8));
    if (uVar1 < 0x1000) {
      sVar2 = strlen(param_3);
    }
    else {
      sVar2 = 0xfffffffffffffff2;
    }
    return sVar2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010718e,"aw22xxx_cfg_show",0x812);
}

