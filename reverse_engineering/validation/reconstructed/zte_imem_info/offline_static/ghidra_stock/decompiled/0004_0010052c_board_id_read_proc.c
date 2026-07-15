
undefined8 board_id_read_proc(undefined8 param_1)

{
  long lVar1;
  undefined *puVar2;
  undefined4 uVar3;
  
  lVar1 = of_find_compatible_node(0,0,"qcom,msm-imem-board-id");
  if (lVar1 == 0) {
    puVar2 = &DAT_001009ec;
  }
  else {
    vendor_imem_info_addr = (undefined4 *)of_iomap(lVar1,0);
    if (vendor_imem_info_addr != (undefined4 *)0x0) {
      uVar3 = *vendor_imem_info_addr;
      _printk(&DAT_0010096d,"qcom,msm-imem-board-id",uVar3);
      goto LAB_001005b4;
    }
    puVar2 = &DAT_0010097d;
  }
  _printk(puVar2,"qcom,msm-imem-board-id");
  uVar3 = 0xffffffff;
LAB_001005b4:
  seq_printf(param_1,&DAT_001008fe,uVar3);
  return 0;
}

