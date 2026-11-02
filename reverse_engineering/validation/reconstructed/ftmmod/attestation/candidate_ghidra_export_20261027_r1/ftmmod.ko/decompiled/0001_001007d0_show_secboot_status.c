
long show_secboot_status(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  uVar2 = is_secboot_device();
  iVar1 = snprintf(param_3,0x1000,"%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}

