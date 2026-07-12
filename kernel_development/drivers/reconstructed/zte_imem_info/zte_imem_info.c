// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_imem_info.c - ZTE Vendor IMEM Information Driver
 *
 * Exposes board_id and DDR memory information via /proc/vendor_imem/
 * and /proc/driver/ interfaces using data read from IMEM (Internal Memory)
 * mapped via Device Tree compatible nodes.
 *
 * Reconstructed from binary analysis of zte_imem_info.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 *
 * Original symbols (nm --defined-only):
 *   T init_module
 *   T request_board_id
 *   t board_id_proc_open / board_id_read_proc
 *   t ddr_id_proc_open   / ddr_id_read_proc
 *
 * Undefined symbols (nm -u):
 *   of_find_compatible_node, of_iomap, _printk,
 *   proc_create, proc_mkdir, remove_proc_entry,
 *   seq_lseek, seq_printf, seq_read, single_open, single_release
 */

#ifdef ZTE_IMEM_INFO_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/of.h>
#include <linux/of_address.h>
#include <linux/io.h>
#endif

#define DRV_NAME "zte_imem_info"

/* Cached IMEM mapped address (reused across reads) */
static void __iomem *vendor_imem_info_addr;

/* ======================================================================
 * DDR Memory Information
 * ====================================================================== */

/*
 * DDR manufacturer ID to string mapping.
 * Values per JEDEC JEP106 / LPDDR specification.
 */
static const char *ddr_manufacturer_name(unsigned int id)
{
	switch (id) {
	case 1:  return "SAMSUNG";
	case 2:  return "QIMONDA";
	case 3:  return "ELPIDA";
	case 4:  return "ETRON";
	case 5:  return "NANYA";
	case 6:  return "HYNIX";
	case 7:  return "MOSEL";
	case 8:  return "WINBOND";
	case 9:  return "ESMT";
	case 11: return "SPANSION";
	case 12: return "SST";
	case 13: return "ZMOS";
	case 14: return "INTEL";
	case 254: return "NUMONYX";
	case 255: return "MICRON";
	default: return "UNKNOWN";
	}
}

/*
 * DDR type ID to string mapping.
 * Index into type name array (valid range 0-9).
 */
static const char * const ddr_type_names[] = {
	"LPDDR1",     /* 0 */
	"UNKNOWN",    /* 1 */
	"LPDDR2",     /* 2 */
	"PCDDR3",     /* 3 */
	"PCDDR4",     /* 4 */
	"LPDDR3",     /* 5 */
	"LPDDR4",     /* 6 */
	"LPDDR4X",    /* 7 */
	"LPDDR5",     /* 8 */
	"LPDDR5X",    /* 9 */
};

#define DDR_TYPE_COUNT ARRAY_SIZE(ddr_type_names)

/*
 * Helper: find a compatible DT node, iomap it, and return the u32 value.
 * Returns 0 on failure and logs the error.
 */
static int imem_read_u32(const char *compatible, u32 *out)
{
	struct device_node *np;

	np = of_find_compatible_node(NULL, NULL, compatible);
	if (!np) {
		pr_err("unable to find DT imem %s node\n", compatible);
		return -ENODEV;
	}

	vendor_imem_info_addr = of_iomap(np, 0);
	if (!vendor_imem_info_addr) {
		pr_err("unable to map imem %s offset\n", compatible);
		return -ENOMEM;
	}

	*out = __raw_readl(vendor_imem_info_addr);
	pr_info("%s: 0x%x\n", compatible, *out);

	return 0;
}

/*
 * /proc/vendor_imem/ddr_id (and /proc/driver/ddr_id)
 *
 * Output format: "<MANUFACTURER>-NA-NA-<SIZE_GB>GB-<TYPE>\n"
 * Example:       "SAMSUNG-NA-NA-16GB-LPDDR5\n"
 */
static int ddr_id_read_proc(struct seq_file *m, void *v)
{
	const char *manufacturer = "UNKNOWN";
	const char *type_name = "UNKNOWN";
	u32 mfr_id, type_id, size_mb;
	int size_gb = 0;

	/* DDR Manufacturer */
	if (imem_read_u32("qcom,msm-imem-ddr_memory_manufacture", &mfr_id) == 0)
		manufacturer = ddr_manufacturer_name(mfr_id);

	/* DDR Type */
	if (imem_read_u32("qcom,msm-imem-ddr_memory_type", &type_id) == 0) {
		if (type_id < DDR_TYPE_COUNT)
			type_name = ddr_type_names[type_id];
	}

	/* DDR Size (value in MB from IMEM, converted to GB) */
	if (imem_read_u32("qcom,msm-imem-ddr_memory_size", &size_mb) == 0)
		size_gb = (s32)size_mb / 1024;

	seq_printf(m, "%s-NA-NA-%dGB-%s\n", manufacturer, size_gb, type_name);
	return 0;
}

static int ddr_id_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, ddr_id_read_proc, NULL);
}

static const struct proc_ops ddr_id_proc_fops = {
	.proc_open    = ddr_id_proc_open,
	.proc_read    = seq_read,
	.proc_lseek   = seq_lseek,
	.proc_release = single_release,
};

/* ======================================================================
 * Board ID
 * ====================================================================== */

/*
 * /proc/vendor_imem/board_id (and /proc/driver/board_id)
 *
 * Output format: "<BOARD_ID_INT>\n"
 */
static int board_id_read_proc(struct seq_file *m, void *v)
{
	u32 board_id;
	int val = -1;

	if (imem_read_u32("qcom,msm-imem-board-id", &board_id) == 0)
		val = (int)board_id;

	seq_printf(m, "%d\n", val);
	return 0;
}

static int board_id_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, board_id_read_proc, NULL);
}

static const struct proc_ops board_id_proc_fops = {
	.proc_open    = board_id_proc_open,
	.proc_read    = seq_read,
	.proc_lseek   = seq_lseek,
	.proc_release = single_release,
};

/* ======================================================================
 * Exported API: request_board_id()
 * ====================================================================== */

/**
 * request_board_id() - Read and return the board ID from IMEM
 *
 * Returns the board ID as int, or -1 on failure.
 * This function is exported for use by other ZTE kernel modules.
 */
int request_board_id(void)
{
	u32 board_id;

	if (imem_read_u32("qcom,msm-imem-board-id", &board_id) != 0)
		return -1;

	return (int)board_id;
}
EXPORT_SYMBOL(request_board_id);

/* ======================================================================
 * Module Init / Exit
 * ====================================================================== */

static int __init zte_imem_info_init(void)
{
	if (!proc_mkdir("vendor_imem", NULL))
		return 0;

	if (!proc_create("vendor_imem/ddr_id", 0444, NULL, &ddr_id_proc_fops))
		goto err_ddr;

	if (!proc_create("vendor_imem/board_id", 0444, NULL, &board_id_proc_fops))
		goto err_board;

	if (!proc_create("driver/ddr_id", 0444, NULL, &ddr_id_proc_fops))
		goto err_drv_ddr;

	if (!proc_create("driver/board_id", 0444, NULL, &board_id_proc_fops))
		goto err_drv_board;

	return 0;

err_drv_board:
	remove_proc_entry("driver/ddr_id", NULL);
err_drv_ddr:
	remove_proc_entry("vendor_imem/board_id", NULL);
err_board:
	remove_proc_entry("vendor_imem/ddr_id", NULL);
err_ddr:
	remove_proc_entry("vendor_imem", NULL);
	return 0;
}

module_init(zte_imem_info_init);

MODULE_LICENSE("GPL");
MODULE_INFO(built_with, "DDK");
