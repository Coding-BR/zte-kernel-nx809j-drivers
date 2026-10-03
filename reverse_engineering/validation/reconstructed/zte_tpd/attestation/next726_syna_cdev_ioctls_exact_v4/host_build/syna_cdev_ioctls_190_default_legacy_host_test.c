#include <stdint.h>
#include <stdio.h>

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_default_legacy.c"

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

int main(void)
{
	if (expect(syna_cdev_ioctls_190_default_legacy(0U) ==
			   SYNA_CDEV_IOCTL_DEFAULT_EINVAL,
			"zero opcode")) return 1;
	if (expect(syna_cdev_ioctls_190_default_legacy(0x20U) ==
			   SYNA_CDEV_IOCTL_DEFAULT_EINVAL,
			"gap opcode")) return 1;
	if (expect(syna_cdev_ioctls_190_default_legacy(UINT32_MAX) ==
			   SYNA_CDEV_IOCTL_DEFAULT_EINVAL,
			"maximum opcode")) return 1;
	puts("PASS syna_cdev_ioctls_190_default_legacy: 3 cases");
	return 0;
}
