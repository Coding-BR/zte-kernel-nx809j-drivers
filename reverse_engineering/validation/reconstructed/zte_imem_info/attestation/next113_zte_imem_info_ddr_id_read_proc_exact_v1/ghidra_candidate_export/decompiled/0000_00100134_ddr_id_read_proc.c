
undefined8 ddr_id_read_proc(undefined8 param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  undefined *puVar4;
  int iVar5;
  char *pcVar6;
  char *pcVar7;
  
  lVar3 = of_find_compatible_node(0,0,"qcom,msm-imem-ddr_memory_manufacture");
  if (lVar3 == 0) {
    puVar4 = &DAT_001008ca;
LAB_0010018c:
    _printk(puVar4,"qcom,msm-imem-ddr_memory_manufacture");
switchD_00100284_caseD_a:
    pcVar6 = "UNKNOWN";
  }
  else {
    vendor_imem_info_addr = (uint *)of_iomap(lVar3,0);
    if (vendor_imem_info_addr == (uint *)0x0) {
      puVar4 = &DAT_0010085b;
      goto LAB_0010018c;
    }
    uVar1 = *vendor_imem_info_addr;
    _printk(&DAT_0010084b,"qcom,msm-imem-ddr_memory_manufacture",uVar1);
    pcVar6 = "SAMSUNG";
    switch(uVar1) {
    case 1:
      break;
    case 2:
      pcVar6 = "QIMONDA";
      break;
    case 3:
      pcVar6 = "ELPIDA";
      break;
    case 4:
      pcVar6 = "ETRON";
      break;
    case 5:
      pcVar6 = "NANYA";
      break;
    case 6:
      pcVar6 = "HYNIX";
      break;
    case 7:
      pcVar6 = "MOSEL";
      break;
    case 8:
      pcVar6 = "WINBOND";
      break;
    case 9:
      pcVar6 = "ESMT";
      break;
    case 10:
      goto switchD_00100284_caseD_a;
    case 0xb:
      pcVar6 = "SPANSION";
      break;
    case 0xc:
      pcVar6 = "SST";
      break;
    case 0xd:
      pcVar6 = "ZMOS";
      break;
    case 0xe:
      pcVar6 = "INTEL";
      break;
    default:
      if (uVar1 == 0xfe) {
        pcVar6 = "NUMONYX";
      }
      else {
        if (uVar1 != 0xff) goto switchD_00100284_caseD_a;
        pcVar6 = "MICRON";
      }
    }
  }
  lVar3 = of_find_compatible_node(0,0,"qcom,msm-imem-ddr_memory_type");
  if (lVar3 == 0) {
    puVar4 = &DAT_001008ca;
LAB_001001dc:
    _printk(puVar4,"qcom,msm-imem-ddr_memory_type");
LAB_001001e8:
    pcVar7 = "UNKNOWN";
  }
  else {
    vendor_imem_info_addr = (uint *)of_iomap(lVar3,0);
    if (vendor_imem_info_addr == (uint *)0x0) {
      puVar4 = &DAT_0010085b;
      goto LAB_001001dc;
    }
    uVar1 = *vendor_imem_info_addr;
    _printk(&DAT_0010084b,"qcom,msm-imem-ddr_memory_type",uVar1);
    if (9 < uVar1) goto LAB_001001e8;
    pcVar7 = (&PTR_s_LPDDR1_00100678)[uVar1];
  }
  lVar3 = of_find_compatible_node(0,0,"qcom,msm-imem-ddr_memory_size");
  if (lVar3 == 0) {
    puVar4 = &DAT_001008ca;
  }
  else {
    vendor_imem_info_addr = (uint *)of_iomap(lVar3,0);
    if (vendor_imem_info_addr != (uint *)0x0) {
      uVar2 = *vendor_imem_info_addr;
      _printk(&DAT_0010084b,"qcom,msm-imem-ddr_memory_size",uVar2);
      uVar1 = uVar2 + 0x3ff;
      if (-1 < (int)uVar2) {
        uVar1 = uVar2;
      }
      iVar5 = (int)uVar1 >> 10;
      goto LAB_001002f4;
    }
    puVar4 = &DAT_0010085b;
  }
  _printk(puVar4,"qcom,msm-imem-ddr_memory_size");
  iVar5 = 0;
LAB_001002f4:
  seq_printf(param_1,"%s-NA-NA-%dGB-%s\n",pcVar6,iVar5,pcVar7);
  return 0;
}

