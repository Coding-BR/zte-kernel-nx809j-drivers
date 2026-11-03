# Richtap shared FIFO publication review — 2026-11-03

## Result

The FIFO is mapped to userspace, but the producer's publication ordering cannot be verified from the available sources. This is an open protocol assumption, not a reproduced race or confirmed runtime failure.

## Evidence

- Stock `aw_i2c_probe` allocates order-2 pages (16 KiB), then initializes sixteen linked 0x400-byte FIFO nodes. Each node has state at `+0x0`, length at `+0x2`, next pointer at `+0x8`, and payload at `+0x18`.
- Stock `richtap_file_mmap` requires a 0x4000-byte VMA and maps the pages at `state+0x610` with `remap_pfn_range`.
- Stock `richtap_rtp_work` and the RTP branch of `irq_handle` consume nodes whose state is `'U'`; the worker advances the shared cursor and marks consumed nodes `0xff`. `richtap_update_fifo_data` also reads the shared node state, length and payload.
- Stock `richtap_write` is a stub that returns `count`. Ioctl `0x5209` copies a separate userspace buffer into `state+0x608`; it does not populate the mapped FIFO at `state+0x610`.
- A source search across the repository, excluding generated validation/attestation data, found no userspace Richtap producer implementation. The mapped client is therefore outside this evidence set.

## Concurrency consequence

The recently added kernel mutex coordinates the IRQ and worker consumers and kernel-side FIFO resets. Userspace does not participate in that mutex. The producer must publish payload and length before setting state to `'U'`, with ordering compatible with the kernel's reads. The available evidence does not show whether the client uses a release store, a barrier, or another protocol. Stock consumer accesses are ordinary loads; the candidate retains the stock consumer bodies.

No kernel-only acquire/barrier change is promoted here: without the producer contract, it would not establish correct cross-boundary publication and would change stock behavior without a validated protocol.

## Next evidence needed

Acquire the userspace Richtap source or a hash-bound client binary/disassembly. Identify writes to the mapped node state/length/payload and their memory-ordering operations, then validate the producer-consumer protocol. If the client artifact is unavailable, keep this gate open.

This review changed no reconstruction code and required no Docker rebuild. The evidence JSON records source hashes and confirms that the repository module and Docker curated module both have SHA-256 `37fc86926a32dc3bd170d3c673a9adef3bdb4b48ff90eff1bff2a80af59caeca`.
