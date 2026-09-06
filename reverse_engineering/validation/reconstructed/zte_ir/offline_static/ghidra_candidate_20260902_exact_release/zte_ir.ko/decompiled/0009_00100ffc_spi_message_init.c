
void spi_message_init(long param_1)

{
  undefined8 *puVar1;
  
  *(undefined8 *)(param_1 + 0x60) = 0;
  *(undefined8 *)(param_1 + 0x68) = 0;
  *(undefined8 *)(param_1 + 0x48) = 0;
  *(undefined8 *)(param_1 + 0x50) = 0;
  *(undefined8 *)(param_1 + 0x38) = 0;
  *(undefined8 *)(param_1 + 0x40) = 0;
  *(undefined8 *)(param_1 + 0x28) = 0;
  *(undefined8 *)(param_1 + 0x30) = 0;
  *(undefined8 *)(param_1 + 0x18) = 0;
  *(undefined8 *)(param_1 + 0x20) = 0;
  *(undefined8 *)(param_1 + 0x10) = 0;
  puVar1 = (undefined8 *)(param_1 + 0x58);
  *puVar1 = 0;
  *(long *)param_1 = param_1;
  *(long *)(param_1 + 8) = param_1;
  *puVar1 = puVar1;
  *(undefined8 **)(param_1 + 0x60) = puVar1;
  return;
}

