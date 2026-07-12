# Microtarefas Obrigatórias: zte_sensor_sensitivity

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_sensors_sensitivity_register | sensors_sensitivity_register | 001005b4 | core_logic | zte_sensor_sensitivity.c:sensors_sensitivity_register | READY_FOR_IMPLEMENTATION |
| 002_sensor_create_sysfs_interfaces | sensor_create_sysfs_interfaces | 00100944 | core_logic | zte_sensor_sensitivity.c:sensor_create_sysfs_interfaces | READY_FOR_IMPLEMENTATION |
| 003_sensors_sensitivity_unregister | sensors_sensitivity_unregister | 00100a44 | core_logic | zte_sensor_sensitivity.c:sensors_sensitivity_unregister | READY_FOR_IMPLEMENTATION |
| 004_accel_enable_show | accel_enable_show | 00100afc | user_abi | zte_sensor_sensitivity.c:accel_enable_show | READY_FOR_IMPLEMENTATION |
| 005_accel_enable_store | accel_enable_store | 00100b80 | user_abi | zte_sensor_sensitivity.c:accel_enable_store | READY_FOR_IMPLEMENTATION |
| 006_accel_x_axial_show | accel_x_axial_show | 00100c74 | user_abi | zte_sensor_sensitivity.c:accel_x_axial_show | READY_FOR_IMPLEMENTATION |
| 007_accel_x_axial_store | accel_x_axial_store | 00100cf8 | user_abi | zte_sensor_sensitivity.c:accel_x_axial_store | READY_FOR_IMPLEMENTATION |
| 008_accel_y_axial_show | accel_y_axial_show | 00100de8 | user_abi | zte_sensor_sensitivity.c:accel_y_axial_show | READY_FOR_IMPLEMENTATION |
| 009_accel_y_axial_store | accel_y_axial_store | 00100e6c | user_abi | zte_sensor_sensitivity.c:accel_y_axial_store | READY_FOR_IMPLEMENTATION |
| 010_accel_z_axial_show | accel_z_axial_show | 00100f5c | user_abi | zte_sensor_sensitivity.c:accel_z_axial_show | READY_FOR_IMPLEMENTATION |
| 011_accel_z_axial_store | accel_z_axial_store | 00100fe0 | user_abi | zte_sensor_sensitivity.c:accel_z_axial_store | READY_FOR_IMPLEMENTATION |
| 012_gyro_enable_show | gyro_enable_show | 001010d0 | user_abi | zte_sensor_sensitivity.c:gyro_enable_show | READY_FOR_IMPLEMENTATION |
| 013_gyro_enable_store | gyro_enable_store | 00101154 | user_abi | zte_sensor_sensitivity.c:gyro_enable_store | READY_FOR_IMPLEMENTATION |
| 014_gyro_x_axial_show | gyro_x_axial_show | 00101248 | user_abi | zte_sensor_sensitivity.c:gyro_x_axial_show | READY_FOR_IMPLEMENTATION |
| 015_gyro_x_axial_store | gyro_x_axial_store | 001012cc | user_abi | zte_sensor_sensitivity.c:gyro_x_axial_store | READY_FOR_IMPLEMENTATION |
| 016_gyro_y_axial_show | gyro_y_axial_show | 001013bc | user_abi | zte_sensor_sensitivity.c:gyro_y_axial_show | READY_FOR_IMPLEMENTATION |
| 017_gyro_y_axial_store | gyro_y_axial_store | 00101440 | user_abi | zte_sensor_sensitivity.c:gyro_y_axial_store | READY_FOR_IMPLEMENTATION |
| 018_gyro_z_axial_show | gyro_z_axial_show | 00101530 | user_abi | zte_sensor_sensitivity.c:gyro_z_axial_show | READY_FOR_IMPLEMENTATION |
| 019_gyro_z_axial_store | gyro_z_axial_store | 001015b4 | user_abi | zte_sensor_sensitivity.c:gyro_z_axial_store | READY_FOR_IMPLEMENTATION |
| 020_init_module | init_module | 001016a4 | lifecycle | zte_sensor_sensitivity.c:init_module | READY_FOR_IMPLEMENTATION |
| 021_cleanup_module | cleanup_module | 001016fc | lifecycle | zte_sensor_sensitivity.c:cleanup_module | READY_FOR_IMPLEMENTATION |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
