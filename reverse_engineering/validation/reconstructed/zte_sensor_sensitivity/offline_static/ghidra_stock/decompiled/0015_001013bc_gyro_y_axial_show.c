
long gyro_y_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101c5c,"NUBIA_SENSORS_SENS","gyro_y_axial_show",0x129,
            *(undefined4 *)(lVar2 + 0x58));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x58));
  return (long)iVar1;
}

