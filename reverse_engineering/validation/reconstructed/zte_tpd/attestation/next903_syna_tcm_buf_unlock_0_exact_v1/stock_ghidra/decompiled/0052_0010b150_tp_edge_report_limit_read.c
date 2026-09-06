
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long tp_edge_report_limit_read
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 *puVar4;
  ulong uVar5;
  
  lVar3 = tpd_cdev;
  if (*param_4 == 0) {
    puVar4 = (undefined8 *)__kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
    if (puVar4 == (undefined8 *)0x0) {
      _printk(&DAT_00133d80);
      lVar3 = -0xc;
    }
    else {
      builtin_strncpy((char *)(puVar4 + 0xc),"algo_ope",8);
      builtin_strncpy((char *)(puVar4 + 0xd),"n:1 > ed",8);
      builtin_strncpy((char *)(puVar4 + 0xe),"ge_repor",8);
      builtin_strncpy((char *)(puVar4 + 0xf),"t_limit\n",8);
      builtin_strncpy((char *)(puVar4 + 10),"algo_ope",8);
      builtin_strncpy((char *)(puVar4 + 0xb),"n, echo ",8);
      puVar4[3] = 0x2323232323232323;
      *(char (*) [8])(puVar4 + 4) = (char  [8])0x23232323232323;
      builtin_strncpy((char *)(puVar4 + 0x15),"e_report",8);
      builtin_strncpy((char *)(puVar4 + 0x16),"_limit\n",8);
      puVar4[1] = 0x2323232323232323;
      puVar4[2] = 0x2323232323232323;
      builtin_strncpy((char *)(puVar4 + 0x10),"jitter_p",8);
      builtin_strncpy((char *)(puVar4 + 0x11),"ixel, ec",8);
      builtin_strncpy((char *)(puVar4 + 0x13),"r_pixel:",8);
      builtin_strncpy((char *)(puVar4 + 0x14),"10 > edg",8);
      builtin_strncpy((char *)(puVar4 + 0x12),"ho jitte",8);
      *puVar4 = 0x2323232323232323;
      *(undefined1 *)((long)puVar4 + 0x4f) = 10;
      builtin_strncpy((char *)((long)puVar4 + 199),"ho jitte",8);
      builtin_strncpy((char *)((long)puVar4 + 0xbf),"imer, ec",8);
      builtin_strncpy((char *)((long)puVar4 + 0xb7),"jitter_t",8);
      *(undefined8 *)((long)puVar4 + 0x2f) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x37) = 0x2323232323232323;
      builtin_strncpy((char *)((long)puVar4 + 0xe7),"t_limit\n",8);
      builtin_strncpy((char *)((long)puVar4 + 0xdf),"ge_repor",8);
      *(undefined8 *)((long)puVar4 + 0x3f) = 0x2323232323232323;
      builtin_strncpy((char *)((long)puVar4 + 0xd7),"100 > ed",8);
      builtin_strncpy((char *)((long)puVar4 + 0xcf),"r_timer:",8);
      builtin_strncpy((char *)((long)puVar4 + 0x47),"#######\n",8);
      builtin_strncpy((char *)((long)puVar4 + 0xff),"o click_",8);
      builtin_strncpy((char *)((long)puVar4 + 0xf7),"xel, ech",8);
      builtin_strncpy((char *)((long)puVar4 + 0xef),"click_pi",8);
      builtin_strncpy((char *)((long)puVar4 + 0x11c),"t_limit\n",8);
      *(undefined8 *)((long)puVar4 + 0x27) = 0x2323232323232323;
      *(undefined1 *)((long)puVar4 + 0x223) = 10;
      builtin_strncpy((char *)((long)puVar4 + 0x10f)," > edge_",8);
      builtin_strncpy((char *)((long)puVar4 + 0x117),"report_l",8);
      builtin_strncpy((char *)((long)puVar4 + 0x107),"pixel:10",8);
      *(undefined4 *)((long)puVar4 + 0x15c) = 0xa74696d;
      builtin_strncpy((char *)((long)puVar4 + 0x124),"long_pre",8);
      builtin_strncpy((char *)((long)puVar4 + 300),"ss_open,",8);
      builtin_strncpy((char *)((long)puVar4 + 0x14c),"> edge_r",8);
      builtin_strncpy((char *)((long)puVar4 + 0x154),"eport_li",8);
      builtin_strncpy((char *)((long)puVar4 + 0x134)," echo lo",8);
      builtin_strncpy((char *)((long)puVar4 + 0x13c),"ng_press",8);
      builtin_strncpy((char *)((long)puVar4 + 0x144),"_open:1 ",8);
      builtin_strncpy((char *)(puVar4 + 0x2e),", echo l",8);
      builtin_strncpy((char *)(puVar4 + 0x2f),"ong_pres",8);
      builtin_strncpy((char *)(puVar4 + 0x2c),"long_pre",8);
      builtin_strncpy((char *)(puVar4 + 0x2d),"ss_timer",8);
      builtin_strncpy((char *)(puVar4 + 0x32),"ge_repor",8);
      builtin_strncpy((char *)(puVar4 + 0x33),"t_limit\n",8);
      builtin_strncpy((char *)(puVar4 + 0x30),"s_timer:",8);
      builtin_strncpy((char *)(puVar4 + 0x31),"500 > ed",8);
      *(undefined4 *)(puVar4 + 0x3b) = 0xa7469;
      builtin_strncpy((char *)(puVar4 + 0x34),"pixel li",8);
      builtin_strncpy((char *)(puVar4 + 0x35),"mit leve",8);
      builtin_strncpy((char *)(puVar4 + 0x39)," edge_re",8);
      builtin_strncpy((char *)(puVar4 + 0x3a),"port_lim",8);
      builtin_strncpy((char *)(puVar4 + 0x36),"l,user s",8);
      builtin_strncpy((char *)(puVar4 + 0x37),"etting. ",8);
      builtin_strncpy((char *)(puVar4 + 0x38),"echo 5 >",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1eb),", echo l",8);
      builtin_strncpy((char *)((long)puVar4 + 499),"ong_pres",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1db),"long_pre",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1e3),"ss_pixel",8);
      builtin_strncpy((char *)((long)puVar4 + 0x213),"ge_repor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x21b),"t_limit\n",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1fb),"s_pixel:",8);
      builtin_strncpy((char *)((long)puVar4 + 0x203),"10,10,20",8);
      builtin_strncpy((char *)((long)puVar4 + 0x20b),",20 > ed",8);
      *(undefined8 *)((long)puVar4 + 0x23c) = 0x2323232323232323;
      *(char (*) [8])((long)puVar4 + 0x244) = (char  [8])0x23232323232323;
      *(undefined8 *)((long)puVar4 + 0x22c) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x234) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x224) = 0x2323232323232323;
      *(undefined2 *)((long)puVar4 + 0x273) = 10;
      *(undefined8 *)((long)puVar4 + 0x25b) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x263) = 0x2323232323232323;
      builtin_strncpy((char *)((long)puVar4 + 0x26b),"#######\n",8);
      *(undefined8 *)((long)puVar4 + 0x24b) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x253) = 0x2323232323232323;
      iVar2 = snprintf((char *)((long)puVar4 + 0x274),0xd8c,"algo_open:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x1b));
      lVar1 = (long)iVar2 + 0x274;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0xd8c - (long)iVar2,"jitter_pixel:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x24));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"jitter_timer:%5u\n",
                       (ulong)*(ushort *)(lVar3 + 0x3e));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"click_pixel:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x26));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"long_press_open:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x25));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"long_press_timer:%5u\n",
                       (ulong)*(ushort *)(lVar3 + 0x3c));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"pixel limit level:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x38));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"click_pixel width:");
      uVar5 = lVar1 + iVar2;
      if (uVar5 < 0xffb) {
        iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                         (ulong)*(byte *)(lVar3 + 0x27));
        uVar5 = uVar5 + (long)iVar2;
        if (uVar5 < 0xffb) {
          iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                           (ulong)*(byte *)(lVar3 + 0x28));
          uVar5 = uVar5 + (long)iVar2;
          if (uVar5 < 0xffb) {
            iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                             (ulong)*(byte *)(lVar3 + 0x29));
            uVar5 = uVar5 + (long)iVar2;
            if (uVar5 < 0xffb) {
              iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                               (ulong)*(byte *)(lVar3 + 0x2a));
              uVar5 = uVar5 + (long)iVar2;
            }
          }
        }
      }
      iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"\n long_press_pixel:");
      uVar5 = uVar5 + (long)iVar2;
      if (uVar5 < 0xffb) {
        iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                         (ulong)*(byte *)(lVar3 + 0x34));
        uVar5 = uVar5 + (long)iVar2;
        if (uVar5 < 0xffb) {
          iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                           (ulong)*(byte *)(lVar3 + 0x35));
          uVar5 = uVar5 + (long)iVar2;
          if (uVar5 < 0xffb) {
            iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                             (ulong)*(byte *)(lVar3 + 0x36));
            uVar5 = uVar5 + (long)iVar2;
            if (uVar5 < 0xffb) {
              iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                               (ulong)*(byte *)(lVar3 + 0x37));
              uVar5 = uVar5 + (long)iVar2;
            }
          }
        }
      }
      iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"\n");
      lVar3 = uVar5 + (long)iVar2;
      simple_read_from_buffer(param_2,param_3,param_4,puVar4,lVar3);
      kfree(puVar4);
    }
  }
  else {
    lVar3 = 0;
  }
  return lVar3;
}

