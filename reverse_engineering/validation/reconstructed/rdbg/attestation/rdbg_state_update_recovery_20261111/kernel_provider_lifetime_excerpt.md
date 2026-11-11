# Pinned kernel provider excerpts: RDBG SMEM update/rebind (2026-11-11)

Read-only source view from the canonical Docker kernel volume.

- Kernel source commit: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`
- `kernel_platform/common/drivers/soc/qcom/smem_state.c` SHA-256: `39360f4a65caf991621d7c19438b500cb0bd807d617491bd95fbda9cfb0b3265`
- `kernel_platform/common/drivers/soc/qcom/smp2p.c` SHA-256: `372f7eca2129e779693843e032facbb62b245c526446414d19cbb4ee3cb3f465`
- Canonical volume: `nubia_sm8850_kernel_src_nx809j_oout_20261030`, mounted read-only at `/src` for inspection.

## State API (`smem_state.c`)

`qcom_smem_state_get()` obtains a kref through `of_node_to_state()`. `qcom_smem_state_put()` releases that reference. `of_node_to_state()` returns the first list entry with the matching device-tree node; provider registration inserts at the list head.

`qcom_smem_state_update_bits()` checks `state->orphan`, checks for `ops.update_bits`, then invokes `state->ops.update_bits(state->priv, mask, value)`. These checks and the callback are not protected by a provider-call lifetime lock in this API.

`qcom_smem_state_unregister()` sets `orphan = true` and drops the provider's reference. A consumer-held kref can keep the state object alive after unregister, but does not itself keep provider-private resources alive.

## SMP2P provider (`smp2p.c`)

`smp2p_update_bits()` serializes the entry value with its spinlock, writes the masked value, and calls `qcom_smp2p_kick()` only when the value changed. It returns 0.

`qcom_smp2p_alloc_outbound_item()` zeroes the complete outbound shared-memory item before initializing it. This supports resetting the consumer's software shadow/cursor when it observes a different provider state handle.

`qcom_smp2p_remove()` unregisters outbound state handles, frees the mailbox channel, then clears `valid_entries`.

## Review implication

The candidate's `rdbg_smem_state_lock` serializes RDBG's own state lookup/publication/update paths. It is not shared with SMP2P unregister/removal. The pinned API therefore leaves an unresolved remove-vs-update lifetime window: an update can pass the `orphan` check while provider removal proceeds toward releasing callback-private resources. This is a static risk derived from the source sequence, not a reproduced runtime failure. A device remove/notifier or an API-level provider-call lifetime guarantee is still needed before claiming safe runtime rebind.

Exact inspected ranges:

- `smem_state.c`: 45-60, 59-78, 198-230
- `smp2p.c`: 411-430, 462-490, 675-695
