struct aw8693x;
struct aw8693x_haptic;
struct aw869x;
struct aw_haptic;
struct aw869x_haptic;
struct aw8693x_data;
struct aw8693x_chip;
struct device;
struct i2c_client;
void probe_void(void) {}
#define PROBE(tag, type) void probe_##tag(type p) { (void)p; }
PROBE(voidptr, void *)
PROBE(aw8693x, struct aw8693x *)
PROBE(aw8693x_haptic, struct aw8693x_haptic *)
PROBE(aw869x, struct aw869x *)
PROBE(aw_haptic, struct aw_haptic *)
PROBE(aw869x_haptic, struct aw869x_haptic *)
PROBE(aw8693x_data, struct aw8693x_data *)
PROBE(aw8693x_chip, struct aw8693x_chip *)
PROBE(device, struct device *)
PROBE(i2c_client, struct i2c_client *)
