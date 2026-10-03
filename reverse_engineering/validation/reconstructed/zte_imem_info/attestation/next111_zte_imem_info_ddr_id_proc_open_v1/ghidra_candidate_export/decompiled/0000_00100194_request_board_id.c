
undefined4 request_board_id(void)

{
  undefined4 uVar1;
  long lVar2;
  undefined *puVar3;
  
  lVar2 = of_find_compatible_node(0,0,"qcom,msm-imem-board-id");
  if (lVar2 == 0) {
    puVar3 = &DAT_0010096a;
  }
  else {
    vendor_imem_info_addr = (undefined4 *)of_iomap(lVar2,0);
    if (vendor_imem_info_addr != (undefined4 *)0x0) {
      uVar1 = *vendor_imem_info_addr;
      _printk(&DAT_001008eb,"qcom,msm-imem-board-id",uVar1);
      return uVar1;
    }
    puVar3 = &DAT_001008fb;
    vendor_imem_info_addr = (undefined4 *)0x0;
  }
  _printk(puVar3,"qcom,msm-imem-board-id");
  return 0xffffffff;
}

