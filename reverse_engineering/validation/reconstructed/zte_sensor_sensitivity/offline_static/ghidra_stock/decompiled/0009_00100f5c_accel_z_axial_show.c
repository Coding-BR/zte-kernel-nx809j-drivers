
long accel_z_axial_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (1 < SENSORS_SENS_LOG_LEVEL) {
    _printk(&DAT_00101e3e,"NUBIA_SENSORS_SENS","accel_z_axial_show",0xc0,
            *(undefined4 *)(lVar2 + 0x4c));
  }
  iVar1 = sprintf(param_3,"%d\n",(ulong)*(uint *)(lVar2 + 0x4c));
  return (long)iVar1;
}

