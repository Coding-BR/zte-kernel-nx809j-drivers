// SPDX-License-Identifier: GPL-2.0-only
/* Netlink transport recovered from the fp_goodix OEM object. */

#include "fp_goodix_internal.h"

static struct sock *nl_sk;
static u32 pid = (u32)-1;

static void nl_data_ready(struct sk_buff *skb)
{
	struct nlmsghdr *nlh;

	skb_get(skb);
	if (skb->len >= NLMSG_HDRLEN) {
		nlh = nlmsg_hdr(skb);
		pid = nlh->nlmsg_pid;
		pr_info("%s: gf_kernel, update pid=%d\n", __func__, pid);
		kfree_skb(skb);
	}
	pr_info("%s: gf_kernel, current pid=%d\n", __func__, pid);
}

int sendnlmsg(char *msg)
{
	struct sk_buff *skb;
	struct nlmsghdr *nlh;
	int ret;

	if (!msg || !nl_sk || !pid)
		return -ENODEV;

	skb = alloc_skb(NLMSG_SPACE(32), GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	nlh = nlmsg_put(skb, 0, 0, 0, 32, 0);
	if (!nlh) {
		kfree_skb(skb);
		return -EMSGSIZE;
	}

	NETLINK_CB(skb).portid = 0;
	NETLINK_CB(skb).dst_group = 0;
	*(char *)nlmsg_data(nlh) = *msg;

	pr_info("gf_dev-gf_kernel, send message: %d\n", *msg);
	ret = netlink_unicast(nl_sk, skb, pid, MSG_DONTWAIT);
	pr_info("gf_dev-gf_kernel, pid=%d, ret=%d\n", pid, ret);
	return ret < 0 ? ret : 0;
}

int netlink_init(void)
{
	struct netlink_kernel_cfg cfg = { 0 };

	cfg.input = nl_data_ready;

	nl_sk = netlink_kernel_create(&init_net, GF_NETLINK_PROTO, &cfg);
	if (!nl_sk) {
		pr_err("create netlink socket error\n");
		return 1;
	}

	return 0;
}

void netlink_exit(void)
{
	if (nl_sk) {
		netlink_kernel_release(nl_sk);
		nl_sk = NULL;
	}
	pr_info("self module exited\n");
}
