// SPDX-License-Identifier: GPL-2.0
#include <linux/string.h>

struct aw_haptic;

struct richtap_clean_node {
	unsigned char state;
	unsigned char reserved0[7];
	struct richtap_clean_node *next;
	unsigned char reserved1[8];
	unsigned char data[1000];
};

void richtap_clean_buf(struct aw_haptic *haptic)
{
	struct richtap_clean_node *puVar1;
	struct richtap_clean_node *puVar2;

	puVar1 = *(struct richtap_clean_node **)((unsigned char *)haptic + 0x610);
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar1 = puVar2->next;
	puVar2->state = 0xff;
	memset(puVar1->data, 0, 1000);
	puVar2 = puVar1->next;
	puVar1->state = 0xff;
	memset(puVar2->data, 0, 1000);
	puVar2->state = 0xff;
}
