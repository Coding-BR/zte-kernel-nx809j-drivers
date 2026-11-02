struct led_classdev;
struct aw_haptic;
enum led_brightness { LED_OFF, LED_HALF, LED_FULL };
enum led_brightness probe_led_enum(struct led_classdev *p)
{
	return (enum led_brightness)*(unsigned int *)((char *)p - 0x50);
}
enum led_brightness probe_aw_haptic_enum(struct aw_haptic *p)
{
	return (enum led_brightness)*(unsigned int *)((char *)p - 0x50);
}
unsigned int probe_led_uint(struct led_classdev *p)
{
	return *(unsigned int *)((char *)p - 0x50);
}
