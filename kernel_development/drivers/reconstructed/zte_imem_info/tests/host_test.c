#define ZTE_IMEM_INFO_HOST_TEST 1
#include "../zte_imem_info.c"

struct fake_state {
	int failures;
	int single_open_calls;
	int mkdir_fail;
	int create_fail_at;
	int create_calls;
	int remove_calls;
	char created[4][64];
	char removed[4][64];
	int (*last_show)(struct seq_file *, void *);
};

static struct fake_state fake;
static struct proc_dir_entry proc_entry;
struct device_node *fake_nodes;
size_t fake_node_count;

#define EXPECT(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		fake.failures++; \
	} \
} while (0)

static void reset_fake(void)
{
	memset(&fake, 0, sizeof(fake));
	fake.create_fail_at = -1;
	fake_nodes = NULL;
	fake_node_count = 0;
	vendor_imem_info_addr = NULL;
}

void fake_log(const char *format, ...) { (void)format; }

struct device_node *of_find_compatible_node(struct device_node *from,
					     const char *type,
					     const char *compatible)
{
	size_t index;
	(void)from;
	(void)type;
	for (index = 0; index < fake_node_count; index++)
		if (!strcmp(fake_nodes[index].compatible, compatible))
			return &fake_nodes[index];
	return NULL;
}

void *of_iomap(struct device_node *node, int index)
{
	(void)index;
	return node->map_failure ? NULL : &node->value;
}

u32 __raw_readl(const void *address) { return *(const u32 *)address; }

int seq_printf(struct seq_file *seq, const char *format, ...)
{
	int written;
	va_list args;
	va_start(args, format);
	written = vsnprintf(seq->buffer + seq->length,
			    sizeof(seq->buffer) - seq->length, format, args);
	va_end(args);
	if (written > 0)
		seq->length += (size_t)written;
	return written;
}

int single_open(struct file *file, int (*show)(struct seq_file *, void *),
		void *data)
{
	(void)data;
	fake.single_open_calls++;
	fake.last_show = show;
	file->private_data = (void *)show;
	return 0;
}

ssize_t seq_read(struct file *file, char *buffer, size_t size, loff_t *offset)
{ (void)file; (void)buffer; (void)size; (void)offset; return 0; }
loff_t seq_lseek(struct file *file, loff_t offset, int whence)
{ (void)file; (void)whence; return offset; }
int single_release(struct inode *inode, struct file *file)
{ (void)inode; (void)file; return 0; }

struct proc_dir_entry *proc_mkdir(const char *name, struct proc_dir_entry *parent)
{
	(void)parent;
	EXPECT(!strcmp(name, "vendor_imem"));
	return fake.mkdir_fail ? NULL : &proc_entry;
}

struct proc_dir_entry *proc_create(const char *name, unsigned int mode,
				   struct proc_dir_entry *parent,
				   const struct proc_ops *operations)
{
	int call = fake.create_calls++;
	(void)parent;
	EXPECT(mode == 0444);
	EXPECT(operations != NULL);
	strncpy(fake.created[call], name, sizeof(fake.created[call]) - 1);
	return call == fake.create_fail_at ? NULL : &proc_entry;
}

void remove_proc_entry(const char *name, struct proc_dir_entry *parent)
{
	(void)parent;
	strncpy(fake.removed[fake.remove_calls++], name,
		sizeof(fake.removed[0]) - 1);
}

static void test_board_id(void)
{
	struct device_node node = { .compatible = "qcom,msm-imem-board-id", .value = 17 };
	struct seq_file seq = { 0 };

	reset_fake();
	EXPECT(request_board_id() == -1);
	fake_nodes = &node;
	fake_node_count = 1;
	EXPECT(request_board_id() == 17);
	EXPECT(board_id_read_proc(&seq, NULL) == 0);
	EXPECT(!strcmp(seq.buffer, "17\n"));
	node.map_failure = 1;
	memset(&seq, 0, sizeof(seq));
	EXPECT(request_board_id() == -1);
	EXPECT(board_id_read_proc(&seq, NULL) == 0);
	EXPECT(!strcmp(seq.buffer, "-1\n"));
}

static void test_ddr_id(void)
{
	static const struct {
		u32 id;
		const char *name;
	} type_cases[] = {
		{ 0, "LPDDR1" },
		{ 1, "UNKNOWN" },
		{ 2, "LPDDR2" },
		{ 3, "PCDDR3" },
		{ 4, "PCDDR4" },
		{ 5, "LPDDR3" },
		{ 6, "LPDDR4" },
		{ 7, "LPDDR4X" },
		{ 8, "LPDDR5" },
		{ 9, "LPDDR5X" },
		{ 10, "UNKNOWN" },
		{ ~0U, "UNKNOWN" },
	};
	struct device_node nodes[] = {
		{ .compatible = "qcom,msm-imem-ddr_memory_manufacture", .value = 1 },
		{ .compatible = "qcom,msm-imem-ddr_memory_type", .value = 8 },
		{ .compatible = "qcom,msm-imem-ddr_memory_size", .value = 16384 },
	};
	struct seq_file seq = { 0 };
	char expected[64];
	size_t index;

	reset_fake();
	fake_nodes = nodes;
	fake_node_count = ARRAY_SIZE(nodes);
	for (index = 0; index < ARRAY_SIZE(type_cases); index++) {
		nodes[1].value = type_cases[index].id;
		memset(&seq, 0, sizeof(seq));
		EXPECT(ddr_id_read_proc(&seq, NULL) == 0);
		snprintf(expected, sizeof(expected), "SAMSUNG-NA-NA-16GB-%s\n",
			 type_cases[index].name);
		EXPECT(!strcmp(seq.buffer, expected));
	}

	nodes[0].value = 99;
	nodes[1].value = 99;
	memset(&seq, 0, sizeof(seq));
	EXPECT(ddr_id_read_proc(&seq, NULL) == 0);
	EXPECT(!strcmp(seq.buffer, "UNKNOWN-NA-NA-16GB-UNKNOWN\n"));
}

static void test_open_callbacks(void)
{
	struct inode inode = { 0 };
	struct file file = { 0 };

	reset_fake();
	EXPECT(ddr_id_proc_open(&inode, &file) == 0);
	EXPECT(fake.last_show == ddr_id_read_proc);
	EXPECT(board_id_proc_open(&inode, &file) == 0);
	EXPECT(fake.last_show == board_id_read_proc);
	EXPECT(fake.single_open_calls == 2);
}

static void test_init_cleanup_paths(void)
{
	int failure;

	reset_fake();
	EXPECT(init_module() == 0);
	EXPECT(fake.create_calls == 4 && fake.remove_calls == 0);
	EXPECT(!strcmp(fake.created[0], "vendor_imem/ddr_id"));
	EXPECT(!strcmp(fake.created[3], "driver/board_id"));

	reset_fake();
	fake.mkdir_fail = 1;
	EXPECT(init_module() == 0);
	EXPECT(fake.create_calls == 0 && fake.remove_calls == 0);

	for (failure = 0; failure < 4; failure++) {
		reset_fake();
		fake.create_fail_at = failure;
		EXPECT(init_module() == 0);
		EXPECT(fake.remove_calls == failure + 1);
		EXPECT(!strcmp(fake.removed[fake.remove_calls - 1], "vendor_imem"));
	}
}

int main(void)
{
	test_board_id();
	test_ddr_id();
	test_open_callbacks();
	test_init_cleanup_paths();
	if (fake.failures)
		return 1;
	puts("PASS zte_imem_info host tests");
	return 0;
}
