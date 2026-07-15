
uint sendnlmsg(undefined1 *param_1)

{
  uint uVar1;
  long lVar2;
  long lVar3;
  
  uVar1 = 0xffffffed;
  if (((param_1 != (undefined1 *)0x0) && (nl_sk != 0)) && (pid != 0)) {
    lVar2 = __alloc_skb(0x30,0x820,0,0xffffffff);
    if (lVar2 == 0) {
      uVar1 = 0xfffffff4;
    }
    else if (((*(int *)(lVar2 + 0x74) == 0) &&
             (0x2f < *(int *)(lVar2 + 0xd4) - *(int *)(lVar2 + 0xd0))) &&
            (lVar3 = __nlmsg_put(lVar2,0,0,0,0x20,0), lVar3 != 0)) {
      *(undefined8 *)(lVar2 + 0x34) = 0;
      *(undefined1 *)(lVar3 + 0x10) = *param_1;
      _printk(&DAT_00103cca);
      uVar1 = netlink_unicast(nl_sk,lVar2,pid,0x40);
      _printk(&DAT_00103cf0,pid,uVar1);
      uVar1 = uVar1 & (int)uVar1 >> 0x1f;
    }
    else {
      sk_skb_reason_drop(0,lVar2,2);
      uVar1 = 0xffffffa6;
    }
  }
  return uVar1;
}

