
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_alloc_name_array(void)

{
  uint uVar1;
  undefined8 uVar2;
  long lVar3;
  ulong uVar4;
  
  _printk(&DAT_0010920d,"aw22xxx_alloc_name_array");
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
LAB_00103cf4:
    uVar2 = 0xfffffff4;
  }
  else {
    lVar3 = 0;
    uVar2 = sp_el0;
    do {
      uVar2 = __kmalloc_cache_noprof(_led_classdev_unregister,0xcc0,0x40);
      aw22xxx_cfg_name[lVar3] = uVar2;
      if (aw22xxx_cfg_name[lVar3] == 0) {
        if ((int)lVar3 != 0) {
          uVar4 = lVar3 + 1;
          do {
            kfree(aw22xxx_cfg_name[(int)uVar4 - 2]);
            uVar1 = (int)uVar4 - 1;
            uVar4 = (ulong)uVar1;
          } while (1 < (int)uVar1);
        }
        kfree(aw22xxx_cfg_name);
        aw22xxx_cfg_name = (undefined8 *)0x0;
        goto LAB_00103cf4;
      }
      lVar3 = lVar3 + 1;
    } while (lVar3 != 0xb);
    builtin_strncpy((char *)*aw22xxx_cfg_name,"m_led_off.bin",0xe);
    builtin_strncpy((char *)aw22xxx_cfg_name[1],"fan_led_on.bin",0xf);
    builtin_strncpy((char *)aw22xxx_cfg_name[2],"fan_led_off.bin",0x10);
    builtin_strncpy((char *)aw22xxx_cfg_name[3],"touch_led_off.bin",0x12);
    builtin_strncpy((char *)aw22xxx_cfg_name[4],"lamps_init.bin",0xf);
    builtin_strncpy((char *)aw22xxx_cfg_name[5],"nubia_all_rgb_red.bin",0x16);
    builtin_strncpy((char *)aw22xxx_cfg_name[6],"nubia_all_rgb_green.bin",0x18);
    builtin_strncpy((char *)aw22xxx_cfg_name[7],"nubia_all_rgb_blue.bin",0x17);
    builtin_strncpy((char *)aw22xxx_cfg_name[8],"nubia_all_rgb_red.bin",0x16);
    builtin_strncpy((char *)aw22xxx_cfg_name[9],"nubia_all_rgb_green.bin",0x18);
    builtin_strncpy((char *)aw22xxx_cfg_name[10],"nubia_all_rgb_blue.bin",0x17);
    _printk(&DAT_00108534,"aw22xxx_alloc_name_array");
    uVar2 = 0;
  }
  return uVar2;
}

