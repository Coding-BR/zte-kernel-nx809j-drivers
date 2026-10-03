
long gpio_keys_show_GamekeyStatus(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  int iVar2;
  ulong uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0x98);
  uVar3 = (ulong)*(uint *)(*plVar4 + 8);
  if (0 < (int)*(uint *)(*plVar4 + 8)) {
    do {
      if (((plVar4[9] != 0) && (*(short *)plVar4[0xc] == 0xf)) && (*(int *)(plVar4[9] + 0x18) == 5))
      {
        iVar1 = gpiod_get_value_cansleep(plVar4[0xb]);
        gpio_to_desc((int)plVar4[0x22]);
        iVar2 = gpiod_get_raw_value();
        uVar3 = (ulong)(iVar1 == 0 && iVar2 != 0);
        goto LAB_00102348;
      }
      uVar3 = uVar3 - 1;
      plVar4 = plVar4 + 0x22;
    } while (uVar3 != 0);
  }
  uVar3 = 0xffffffff;
LAB_00102348:
  _printk(&DAT_00102b65,uVar3);
  iVar1 = snprintf(param_3,4,"%d\n",uVar3);
  return (long)iVar1;
}

