
void sendnlmsg(undefined1 *param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  if ((((param_1 != (undefined1 *)0x0) && (nl_sk != 0)) && (pid != 0)) &&
     (lVar2 = __alloc_skb(0x30,0x820,0,0xffffffff), lVar2 != 0)) {
    if (((*(int *)(lVar2 + 0x74) == 0) && (0x2f < *(int *)(lVar2 + 0xd4) - *(int *)(lVar2 + 0xd0)))
       && (lVar3 = __nlmsg_put(lVar2,0,0,0,0x20,0), lVar3 != 0)) {
      *(undefined1 *)(lVar3 + 0x10) = *param_1;
      _printk(&DAT_00102fb7,"sendnlmsg");
      iVar1 = netlink_unicast(nl_sk,lVar2,pid,0x40);
      if (iVar1 < 0) {
        _printk(&DAT_00102e1e,"sendnlmsg",iVar1);
      }
    }
    else {
      sk_skb_reason_drop(0,lVar2,2);
    }
  }
  return;
}

