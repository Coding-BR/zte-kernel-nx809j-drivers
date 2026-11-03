# Richtap start/stop serialization — 2026-11-03

## Static finding

Stock ioctl 0x5209 changes playback mode and starts RTP. Stock ioctl 0x5212 queues richtap_stop_work at state+0x668. The stock stop worker invokes callbacks that stop playback, clear IRQ state and disable RTP AEI. Neither the 0x5209 path nor the 0x5212 queueing path orders those operations against one another, so a stop callback can overlap a mode start.

The finding is supported by the preserved stock Ghidra decompilations and stock AArch64 assembly for richtap_file_unlocked_ioctl (entry 0010e374) and richtap_stop_work (entry 00108ba0). Their repository-relative paths and SHA-256 values are recorded in richtap_start_stop_serialization.json.

## Candidate change

The candidate uses haptic_richtap_stream_lock as the outer serialization lock for the 0x5209/0x520a ioctl paths and richtap_stop_work. Stop work acquires locks in this order:

1. stream lock;
2. IRQ/stop lock;
3. device mutex around the first two callbacks;
4. release device mutex;
5. invoke RTP-AEI disable while IRQ/stop and stream locks remain held;
6. release IRQ/stop lock, then stream lock.

It checks the shutdown gate before locking and again after each blocking lock acquisition. Every shutdown return after acquiring a lock releases the locks already held. The candidate module disassembly is preserved in candidate_richtap_stop_work_disassembly.txt and candidate_richtap_file_unlocked_ioctl_disassembly.txt.

The ioctl 0x520a path uses the same stream-then-IRQ order and drains the +0x648 RTP work before entering the stock-exact ioctl body. The IRQ handler takes only the IRQ/stop lock. The +0x648 RTP worker does not acquire the stream lock, so cancel_work_sync at +0x648 while holding the stream lock does not wait on this new lock. Remove closes file entry and waits for active operations before draining the +0x668 worker.

## Build evidence

Two independent builds used the canonical Docker image, the same pinned kernel source/config/toolchain, separate output volumes and separate host source copies mounted at the same container path. Both succeeded and produced byte-identical 6,715,128-byte modules with SHA-256 25b2ff207e3cd56368e8f9256bb5a534e9c6486bf1a5a3004137399c9e2fc7d2. The exact inputs and log hashes are in docker_builds.json.

## Limits

This is a static synchronization hardening change, not stock-exact source reconstruction. The map continues to mark the affected functions as hardened deviations with semantic equivalence unestablished. No runtime stress, KUnit/Lockdep/KCSAN run, device load or NX809J hardware validation was performed. The complete driver remains incomplete.