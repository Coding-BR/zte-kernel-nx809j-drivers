# Pinned kernel evidence for RDBG provider ordering

Target kernel source commit: `3356b35306d35d5a480e3b63df1a9f065b5d9f55` (NX809J target manifest). Hashes below were read from the canonical Docker source volume `nubia_sm8850_kernel_src_nx809j_oout_20261030`.

| Kernel file | SHA-256 |
| --- | --- |
| `drivers/soc/qcom/smem_state.c` | `39360f4a65caf991621d7c19438b500cb0bd807d617491bd95fbda9cfb0b3265` |
| `drivers/soc/qcom/smp2p.c` | `372f7eca2129e779693843e032facbb62b245c526446414d19cbb4ee3cb3f465` |
| `drivers/of/property.c` | `f57891f26a96a65d7937004533faae8116020bb1d72adbf8269ed0d5b0cfce15` |
| `drivers/base/core.c` | `64397a878c094bb860d8cbb7d08c5c0380d4656bc53e0f777e31f1f6666dc882` |
| `drivers/of/platform.c` | `06c93dc6fd3ffb96bb2f13e89f17799332e3560d5ff5af5f58ecbf301735887c` |
| `include/linux/device.h` | `140ef53cc3eb0340a6ac573ec4310adcc3890c310e2d450e82e4f61d98685ff1` |

## Facts from the target source

- `drivers/of/property.c` defines `of_supplier_bindings[]` at lines 1353–1401. It includes interrupt, GPIO, clocks, regulators, and other common properties, but has no parser for `qcom,smem-states`; that property does not produce the needed automatic firmware device link.
- `qcom_smp2p_probe()` iterates the SMP2P provider's available child nodes (`smp2p.c:595–620`). For an outbound child it calls `qcom_smp2p_outbound_entry()` with that child node (`:616`); that function registers the SMEM state against the child node and stores its entry as callback `priv` (`:453`). The callback accesses the entry and parent `smp2p` object (`:411–430`). `qcom_smp2p_remove()` unregisters the states, frees the mailbox channel, and clears the outbound count (`:675–691`). Thus the supplier to link is the platform device for the child node's parent, found with `of_find_device_by_node()` (`drivers/of/platform.c:38–53`).
- `qcom_smem_state_update_bits()` checks `state->orphan`, checks the callback pointer, and then directly invokes `state->ops.update_bits(state->priv, mask, value)` (`smem_state.c:45–57`). The state handle's kref does not independently pin the provider's devm-owned callback data across provider removal. `qcom_smem_state_unregister()` marks the state orphan and drops the provider's reference (`:223–230`).
- `device_link_add()` marks a non-stateless link managed (`drivers/base/core.c:728–750`). During supplier unbind, `device_links_unbind_consumers()` marks managed links `DL_STATE_SUPPLIER_UNBIND`; for active links it forces the consumer driver to unbind and waits for that operation before continuing (`:1564–1615`). `DL_FLAG_AUTOREMOVE_CONSUMER` is defined in `include/linux/device.h:484–491` and removes the dynamic link when the consumer unbinds.
- `of_find_device_by_node()` returns a platform device with a device reference that must be dropped (`drivers/of/platform.c:38–53`); the implementation drops it after `device_link_add()`.

## Candidate consequence and limits

`rdbg_link_smem_provider()` resolves the phandle's state child to its parent SMP2P platform device and creates the managed link before calling `qcom_smem_state_get()`. `rdbg_remove()` takes `rdbg_smem_state_lock`, nulls the state pointer, clears paired shadow/cursor state, and puts the handle. `rdbg_write()` uses the same lock across the provider callback and shadow update. With the managed link active, supplier removal first unbinds the RDBG output consumer; its `.remove` waits for any in-flight update to leave the lock and releases the handle before SMP2P removal frees callback data.

This is static source reasoning plus a canonical compile. It does not validate runtime driver unbind/rebind. The separate input IRQ path and open character-device descriptors are not drained by this `.remove` callback and remain an open lifetime question.
