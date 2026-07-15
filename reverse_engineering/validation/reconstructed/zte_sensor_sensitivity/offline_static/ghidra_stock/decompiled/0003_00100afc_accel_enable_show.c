
long accel_enable_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_001018a8,"NUBIA_SENSORS_SENS","accel_enable_show",0x69,
            *(undefined1 *)(lVar2 + 0x40));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(byte *)(lVar2 + 0x40));
  return (long)iVar1;
}

