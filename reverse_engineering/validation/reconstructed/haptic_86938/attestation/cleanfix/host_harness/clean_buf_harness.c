/* SPDX-License-Identifier: GPL-2.0 */
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifndef CANDIDATE_SOURCE
#error "CANDIDATE_SOURCE must name the source under test"
#endif

#define STRINGIFY_INNER(value) #value
#define STRINGIFY(value) STRINGIFY_INNER(value)

struct richtap_clean_node;

struct aw_haptic {
	unsigned char prefix[0x610];
	struct richtap_clean_node *clean_buf;
};

#include STRINGIFY(CANDIDATE_SOURCE)

_Static_assert(offsetof(struct aw_haptic, clean_buf) == 0x610,
	       "stock root pointer offset changed");
_Static_assert(offsetof(struct richtap_clean_node, next) == 8,
	       "stock next pointer offset changed");
_Static_assert(offsetof(struct richtap_clean_node, data) == 0x18,
	       "stock data offset changed");
_Static_assert(sizeof(struct richtap_clean_node) == 1024,
	       "stock node stride changed");

static int fail(const char *message, unsigned int index)
{
	fprintf(stderr, "FAIL: %s (node=%u)\n", message, index);
	return 1;
}

int main(void)
{
	struct richtap_clean_node nodes[17];
	struct aw_haptic haptic;
	unsigned int i;
	unsigned int j;

	memset(&haptic, 0x5a, sizeof(haptic));
	memset(nodes, 0, sizeof(nodes));
	for (i = 0; i < 17; i++) {
		nodes[i].state = (unsigned char)(0x30 + i);
		memset(nodes[i].reserved0, 0xa5, sizeof(nodes[i].reserved0));
		memset(nodes[i].reserved1, 0x5a, sizeof(nodes[i].reserved1));
		memset(nodes[i].data, (int)(0x81 + i), sizeof(nodes[i].data));
		nodes[i].next = &nodes[i + 1];
	}
	nodes[16].next = NULL;
	haptic.clean_buf = nodes;

	richtap_clean_buf(&haptic);

	for (i = 0; i < 16; i++) {
		if (nodes[i].state != 0xff)
			return fail("state sentinel was not written", i);
		for (j = 0; j < sizeof(nodes[i].data); j++) {
			if (nodes[i].data[j] != 0)
				return fail("buffer byte was not cleared", i);
		}
		if (nodes[i].next != &nodes[i + 1])
			return fail("next link changed", i);
		for (j = 0; j < sizeof(nodes[i].reserved0); j++) {
			if (nodes[i].reserved0[j] != 0xa5)
				return fail("reserved prefix changed", i);
		}
		for (j = 0; j < sizeof(nodes[i].reserved1); j++) {
			if (nodes[i].reserved1[j] != 0x5a)
				return fail("reserved middle changed", i);
		}
	}
	if (nodes[16].state != 0x40 || nodes[16].data[0] != 0x91)
		return fail("function touched the seventeenth node", 16);
	if (nodes[16].next != NULL)
		return fail("seventeenth-node link changed", 16);
	if (haptic.clean_buf != nodes)
		return fail("root pointer changed", 0);
	for (i = 0; i < sizeof(haptic.prefix); i++) {
		if (haptic.prefix[i] != 0x5a) {
			fprintf(stderr, "FAIL: haptic prefix changed at 0x%x\n", i);
			return 1;
		}
	}

	puts("PASS: 16 nodes cleared and marked; links, sentinels, and root preserved");
	return 0;
}
