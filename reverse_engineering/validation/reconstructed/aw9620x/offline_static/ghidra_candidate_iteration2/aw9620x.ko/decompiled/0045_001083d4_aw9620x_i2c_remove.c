
void aw9620x_i2c_remove(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xb8);
  input_unregister_device(*(undefined8 *)(*(long *)(lVar2 + 0x200) + 8));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 8) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x38));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x38) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x68));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x68) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x98));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x98) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 200));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 200) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0xf8));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0xf8) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x128));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x128) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x158));
  if (*(long *)(*(long *)(lVar2 + 0x200) + 0x158) != 0) {
    input_free_device();
  }
  sysfs_remove_group(param_1 + 0x20,&DAT_00100170);
  if (*(char *)(lVar2 + 1) != '\0') {
    regulator_disable(*(undefined8 *)(lVar2 + 0x1f8));
    regulator_put(*(undefined8 *)(lVar2 + 0x1f8));
  }
  return;
}

