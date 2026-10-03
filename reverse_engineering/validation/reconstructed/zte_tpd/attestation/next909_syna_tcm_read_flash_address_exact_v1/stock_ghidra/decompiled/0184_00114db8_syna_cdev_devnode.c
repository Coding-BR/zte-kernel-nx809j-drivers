
undefined8 syna_cdev_devnode(long *param_1,undefined2 *param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  if (param_2 != (undefined2 *)0x0) {
    *param_2 = 0x600;
    lVar2 = param_1[0xe];
    if (lVar2 == 0) {
      lVar2 = *param_1;
    }
    uVar1 = kasprintf(0xcc0,&DAT_00136fcb,lVar2);
    return uVar1;
  }
  return 0;
}

